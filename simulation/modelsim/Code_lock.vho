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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/25/2015 16:14:44"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block2 IS
    PORT (
	LCD_RS : OUT std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	column : IN std_logic_vector(3 DOWNTO 0);
	save : IN std_logic;
	password : IN std_logic_vector(15 DOWNTO 0);
	DATA_BUS : OUT std_logic_vector(7 DOWNTO 0);
	LCD_E : OUT std_logic;
	LCD_ON : OUT std_logic;
	BACK_LED : OUT std_logic;
	LCD_RW : OUT std_logic;
	saved : OUT std_logic;
	equal : OUT std_logic;
	code : OUT std_logic_vector(15 DOWNTO 0);
	debug_led_out : OUT std_logic_vector(7 DOWNTO 0);
	mux_sel : OUT std_logic_vector(3 DOWNTO 0);
	row : OUT std_logic_vector(3 DOWNTO 0)
	);
END Block2;

-- Design Ports Information
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_E	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_ON	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BACK_LED	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saved	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- equal	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[7]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[6]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[5]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[4]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[3]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[2]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[1]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_out[0]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mux_sel[3]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mux_sel[2]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mux_sel[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mux_sel[0]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[3]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[2]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[1]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- save	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- column[3]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- column[0]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- column[2]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- column[1]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Block2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_column : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_save : std_logic;
SIGNAL ww_password : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA_BUS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_BACK_LED : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_saved : std_logic;
SIGNAL ww_equal : std_logic;
SIGNAL ww_code : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_led_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mux_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|f~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst3|cnt[5]~26_combout\ : std_logic;
SIGNAL \inst3|cnt[7]~30_combout\ : std_logic;
SIGNAL \inst3|cnt[11]~38_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux7~0_combout\ : std_logic;
SIGNAL \inst|state.RESET1~regout\ : std_logic;
SIGNAL \inst|state.WRITE_ST3~regout\ : std_logic;
SIGNAL \inst|state.WRITE_ER2~regout\ : std_logic;
SIGNAL \inst|state.WRITE_OP2~regout\ : std_logic;
SIGNAL \inst|state.WRITE_CL8~regout\ : std_logic;
SIGNAL \inst|state.WRITE_OP8~regout\ : std_logic;
SIGNAL \inst|Selector9~3_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~0_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~1_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~2_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~3_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~4_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~5_combout\ : std_logic;
SIGNAL \inst|next_command.RETURN_OP_HOME~regout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ST3~regout\ : std_logic;
SIGNAL \inst|state~104_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL1~regout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ER2~regout\ : std_logic;
SIGNAL \inst|state~114_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP9~regout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP2~regout\ : std_logic;
SIGNAL \inst|state~123_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL8~regout\ : std_logic;
SIGNAL \inst|state~127_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP8~regout\ : std_logic;
SIGNAL \inst|state~128_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~16_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~25_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~26_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~27_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~28_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~33_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~35_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst5|cnt~0_combout\ : std_logic;
SIGNAL \inst5|cnt~1_combout\ : std_logic;
SIGNAL \inst5|cnt~2_combout\ : std_logic;
SIGNAL \inst|Selector34~2_combout\ : std_logic;
SIGNAL \inst|Selector19~2_combout\ : std_logic;
SIGNAL \inst|Selector20~2_combout\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Selector47~0_combout\ : std_logic;
SIGNAL \inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst|Selector44~0_combout\ : std_logic;
SIGNAL \inst|Selector45~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|cnt[2]~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\ : std_logic;
SIGNAL \inst3|FSM_State.WAIT_FOR_EVAL~regout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|en~1_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|cnt[1]~2_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|cnt[0]~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector6~2_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector6~4_combout\ : std_logic;
SIGNAL \inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|num~7_combout\ : std_logic;
SIGNAL \inst|Selector34~3_combout\ : std_logic;
SIGNAL \inst|Selector19~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector6~6_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|label_secret_code_register_port_map|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \inst|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|cnt~6_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|cnt~5_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|cnt~4_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|cnt~3_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|f~0_combout\ : std_logic;
SIGNAL \inst5|f~regout\ : std_logic;
SIGNAL \inst5|f~clkctrl_outclk\ : std_logic;
SIGNAL \inst|LCD_RS~0_combout\ : std_logic;
SIGNAL \inst|state.TOGGLE_E~regout\ : std_logic;
SIGNAL \inst|state.HOLD~feeder_combout\ : std_logic;
SIGNAL \inst|state.HOLD~regout\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|next_command.RESET2~regout\ : std_logic;
SIGNAL \inst|state~99_combout\ : std_logic;
SIGNAL \inst|state.RESET2~regout\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|next_command.RESET3~regout\ : std_logic;
SIGNAL \inst|state~100_combout\ : std_logic;
SIGNAL \inst|state.RESET3~regout\ : std_logic;
SIGNAL \inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst|next_command.FUNC_SET~regout\ : std_logic;
SIGNAL \inst|state~101_combout\ : std_logic;
SIGNAL \inst|state.FUNC_SET~regout\ : std_logic;
SIGNAL \inst|WideOr2~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|process_0~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector4~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~20_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~1\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~3\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~4_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~18_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~5\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~6_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~7\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~8_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~13_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~9\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~10_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~12_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~11\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~14_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~15\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~16_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~2_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Add0~19_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector5~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|column_tmp~1_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|column_tmp~2_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector6~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector6~5_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector5~1_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|column_new~regout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|Fsm_State.TWO~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|freeze~combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|Fsm_State.ONE~0_combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|sel[3]~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|column_tmp~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[1]~19_combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|sel[2]~1_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[1]~20_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|column_tmp~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~13_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Equal8~0_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~12_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[1]~18_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[1]~21_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|Equal6~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~4_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~15_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~10_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~11_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~14_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[0]~17_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~5_combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|sel[0]~3_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~24_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~22_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~23_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~38_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|num~2_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~32_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out~37_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~34_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~30_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~29_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~39_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~31_combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[2]~36_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|ready_to_check~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|en~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|en~regout\ : std_logic;
SIGNAL \save~combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|num~6_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~6_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|num~4_combout\ : std_logic;
SIGNAL \inst2|label_secret_code_register_port_map|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~7_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|num~5_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~8_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~9_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~10_combout\ : std_logic;
SIGNAL \inst2|label_comparator_port_map|tmp~regout\ : std_logic;
SIGNAL \inst3|cnt[0]~14_combout\ : std_logic;
SIGNAL \inst3|cnt[2]~20_combout\ : std_logic;
SIGNAL \inst3|cnt[11]~17_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|cnt[9]~34_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|FSM_State.HOLD_5~regout\ : std_logic;
SIGNAL \inst3|cnt[11]~16_combout\ : std_logic;
SIGNAL \inst3|cnt[0]~15\ : std_logic;
SIGNAL \inst3|cnt[1]~18_combout\ : std_logic;
SIGNAL \inst3|cnt[1]~19\ : std_logic;
SIGNAL \inst3|cnt[2]~21\ : std_logic;
SIGNAL \inst3|cnt[3]~22_combout\ : std_logic;
SIGNAL \inst3|cnt[3]~23\ : std_logic;
SIGNAL \inst3|cnt[4]~25\ : std_logic;
SIGNAL \inst3|cnt[5]~27\ : std_logic;
SIGNAL \inst3|cnt[6]~28_combout\ : std_logic;
SIGNAL \inst3|cnt[6]~29\ : std_logic;
SIGNAL \inst3|cnt[7]~31\ : std_logic;
SIGNAL \inst3|cnt[8]~32_combout\ : std_logic;
SIGNAL \inst3|cnt[8]~33\ : std_logic;
SIGNAL \inst3|cnt[9]~35\ : std_logic;
SIGNAL \inst3|cnt[10]~36_combout\ : std_logic;
SIGNAL \inst3|cnt[10]~37\ : std_logic;
SIGNAL \inst3|cnt[11]~39\ : std_logic;
SIGNAL \inst3|cnt[12]~40_combout\ : std_logic;
SIGNAL \inst3|cnt[12]~41\ : std_logic;
SIGNAL \inst3|cnt[13]~42_combout\ : std_logic;
SIGNAL \inst3|cnt[4]~24_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|FSM_State.HOLD_10~regout\ : std_logic;
SIGNAL \inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|Selector4~1_combout\ : std_logic;
SIGNAL \inst3|FSM_State.IDLE~regout\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|Selector0~1_combout\ : std_logic;
SIGNAL \inst3|rfs~regout\ : std_logic;
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|ready_to_check~regout\ : std_logic;
SIGNAL \inst3|FSM_State~12_combout\ : std_logic;
SIGNAL \inst3|FSM_State.WAIT_FOR_CMP~regout\ : std_logic;
SIGNAL \inst3|FSM_State.P_1~0_combout\ : std_logic;
SIGNAL \inst3|FSM_State.P_1~regout\ : std_logic;
SIGNAL \inst3|FSM_State.P_2~feeder_combout\ : std_logic;
SIGNAL \inst3|FSM_State.P_2~regout\ : std_logic;
SIGNAL \inst3|FSM_State.P_3~regout\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|WideOr8~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|Selector1~2_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~2_combout\ : std_logic;
SIGNAL \inst|cnt~3_combout\ : std_logic;
SIGNAL \inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|Selector3~3_combout\ : std_logic;
SIGNAL \inst|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst|cnt~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|Selector38~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ST4~regout\ : std_logic;
SIGNAL \inst|state~105_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ST4~regout\ : std_logic;
SIGNAL \inst|Selector46~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL9~regout\ : std_logic;
SIGNAL \inst|state~119_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL9~regout\ : std_logic;
SIGNAL \inst|Selector48~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL10~regout\ : std_logic;
SIGNAL \inst|state~129_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL10~regout\ : std_logic;
SIGNAL \inst|Selector49~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL11~regout\ : std_logic;
SIGNAL \inst|state~130_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL11~regout\ : std_logic;
SIGNAL \inst|Selector50~0_combout\ : std_logic;
SIGNAL \inst|Selector26~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ST1~regout\ : std_logic;
SIGNAL \inst|state~102_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ST1~regout\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ST2~regout\ : std_logic;
SIGNAL \inst|state~103_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ST2~regout\ : std_logic;
SIGNAL \inst|Selector50~1_combout\ : std_logic;
SIGNAL \inst|Selector50~2_combout\ : std_logic;
SIGNAL \inst|Selector50~3_combout\ : std_logic;
SIGNAL \inst|next_command.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst|state~91_combout\ : std_logic;
SIGNAL \inst|state.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst|Selector22~3_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ST0~regout\ : std_logic;
SIGNAL \inst|state~98_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ST0~regout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|Selector16~2_combout\ : std_logic;
SIGNAL \inst|correct~0_combout\ : std_logic;
SIGNAL \inst|correct~regout\ : std_logic;
SIGNAL \inst|Selector41~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ER5~regout\ : std_logic;
SIGNAL \inst|state~118_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ER5~regout\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|next_command.RETURN_ER_HOME~regout\ : std_logic;
SIGNAL \inst|state~92_combout\ : std_logic;
SIGNAL \inst|state.RETURN_ER_HOME~regout\ : std_logic;
SIGNAL \inst|state~93_combout\ : std_logic;
SIGNAL \inst|state.RETURN_OP_HOME~regout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|error~regout\ : std_logic;
SIGNAL \inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst|Selector15~0_combout\ : std_logic;
SIGNAL \inst|next_command.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \inst|state~90_combout\ : std_logic;
SIGNAL \inst|state.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \inst|Selector16~1_combout\ : std_logic;
SIGNAL \inst|Selector16~3_combout\ : std_logic;
SIGNAL \inst|next_command.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \inst|state~95_combout\ : std_logic;
SIGNAL \inst|state.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst|next_command.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst|state~96_combout\ : std_logic;
SIGNAL \inst|state.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~2_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|LCD_RS~regout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst|next_command.MODE_SET~regout\ : std_logic;
SIGNAL \inst|state~94_combout\ : std_logic;
SIGNAL \inst|state.MODE_SET~regout\ : std_logic;
SIGNAL \inst|Selector21~1_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ER0~regout\ : std_logic;
SIGNAL \inst|state~97_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ER0~regout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL4~regout\ : std_logic;
SIGNAL \inst|state~115_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL4~regout\ : std_logic;
SIGNAL \inst|Selector35~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL5~regout\ : std_logic;
SIGNAL \inst|state~106_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL5~regout\ : std_logic;
SIGNAL \inst|WideOr6~1_combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|Selector39~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL6~regout\ : std_logic;
SIGNAL \inst|state~112_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL6~regout\ : std_logic;
SIGNAL \inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ER1~regout\ : std_logic;
SIGNAL \inst|state~111_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ER1~regout\ : std_logic;
SIGNAL \inst|Selector20~3_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP1~regout\ : std_logic;
SIGNAL \inst|state~109_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP1~regout\ : std_logic;
SIGNAL \inst|state~108_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL1~regout\ : std_logic;
SIGNAL \inst|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|WideOr7~1_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector36~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP5~regout\ : std_logic;
SIGNAL \inst|state~107_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP5~regout\ : std_logic;
SIGNAL \inst|Selector40~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP6~regout\ : std_logic;
SIGNAL \inst|state~110_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP6~regout\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP7~regout\ : std_logic;
SIGNAL \inst|state~113_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP7~regout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP4~regout\ : std_logic;
SIGNAL \inst|state~116_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP4~regout\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ER3~regout\ : std_logic;
SIGNAL \inst|state~117_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ER3~regout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Selector37~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_ER4~regout\ : std_logic;
SIGNAL \inst|state~126_combout\ : std_logic;
SIGNAL \inst|state.WRITE_ER4~regout\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_OP3~regout\ : std_logic;
SIGNAL \inst|state~125_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP3~regout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL2~regout\ : std_logic;
SIGNAL \inst|state~122_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL2~regout\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL3~regout\ : std_logic;
SIGNAL \inst|state~124_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL3~regout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|state~121_combout\ : std_logic;
SIGNAL \inst|state.WRITE_OP9~regout\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|next_command.WRITE_CL7~regout\ : std_logic;
SIGNAL \inst|state~120_combout\ : std_logic;
SIGNAL \inst|state.WRITE_CL7~regout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|Selector8~2_combout\ : std_logic;
SIGNAL \inst|Selector8~3_combout\ : std_logic;
SIGNAL \inst|Selector8~4_combout\ : std_logic;
SIGNAL \inst|Selector9~4_combout\ : std_logic;
SIGNAL \inst|LCD_E~0_combout\ : std_logic;
SIGNAL \inst|LCD_E~regout\ : std_logic;
SIGNAL \inst2|label_secret_code_register_port_map|t~feeder_combout\ : std_logic;
SIGNAL \inst2|label_secret_code_register_port_map|t~regout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|button_out[3]~40_combout\ : std_logic;
SIGNAL \inst7|label_shift_control_port_map|num~3_combout\ : std_logic;
SIGNAL \inst7|label_shift_register_port_map|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.ONE~0_combout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.ONE~regout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.TWO~0_combout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.TWO~regout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.THREE~feeder_combout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.THREE~regout\ : std_logic;
SIGNAL \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[7]~2_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[7]~3_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[6]~5_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[5]~7_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[4]~9_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[3]~11_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[2]~13_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_1_port_map|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[1]~15_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_3_port_map|Mux7~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_0_port_map|Mux7~0_combout\ : std_logic;
SIGNAL \inst6|label_hex_display_2_port_map|Mux7~0_combout\ : std_logic;
SIGNAL \inst6|label_mux_4to1_port_map|hex_out[0]~17_combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|sel[1]~2_combout\ : std_logic;
SIGNAL \password~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \column~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|label_secret_code_register_port_map|tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|label_debounce_port_map|column_tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|label_shift_control_port_map|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|label_debounce_port_map|column_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|lcd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|label_shift_register_port_map|tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|label_shift_control_port_map|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|label_rotator_port_map|rot\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_save~combout\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \inst4|label_debounce_port_map|ALT_INV_Column_State.SAMPLING~regout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|ALT_INV_sel[0]~3_combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|ALT_INV_sel[1]~2_combout\ : std_logic;
SIGNAL \inst4|label_polling_rotator_port_map|ALT_INV_sel[2]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LCD_E~regout\ : std_logic;
SIGNAL \inst|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);

BEGIN

LCD_RS <= ww_LCD_RS;
ww_clock <= clock;
ww_reset <= reset;
ww_column <= column;
ww_save <= save;
ww_password <= password;
DATA_BUS <= ww_DATA_BUS;
LCD_E <= ww_LCD_E;
LCD_ON <= ww_LCD_ON;
BACK_LED <= ww_BACK_LED;
LCD_RW <= ww_LCD_RW;
saved <= ww_saved;
equal <= ww_equal;
code <= ww_code;
debug_led_out <= ww_debug_led_out;
mux_sel <= ww_mux_sel;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|f~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst5|f~regout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_save~combout\ <= NOT \save~combout\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\inst4|label_debounce_port_map|ALT_INV_Column_State.SAMPLING~regout\ <= NOT \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\;
\inst4|label_polling_rotator_port_map|ALT_INV_sel[0]~3_combout\ <= NOT \inst4|label_polling_rotator_port_map|sel[0]~3_combout\;
\inst4|label_polling_rotator_port_map|ALT_INV_sel[1]~2_combout\ <= NOT \inst4|label_polling_rotator_port_map|sel[1]~2_combout\;
\inst4|label_polling_rotator_port_map|ALT_INV_sel[2]~1_combout\ <= NOT \inst4|label_polling_rotator_port_map|sel[2]~1_combout\;
\inst|ALT_INV_LCD_E~regout\ <= NOT \inst|LCD_E~regout\;
\inst|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \inst|DATA_BUS_VALUE\(3);
\inst|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \inst|DATA_BUS_VALUE\(4);
\inst|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \inst|DATA_BUS_VALUE\(5);

-- Location: LCFF_X42_Y16_N13
\inst3|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[5]~26_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(5));

-- Location: LCFF_X42_Y16_N25
\inst3|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[11]~38_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(11));

-- Location: LCFF_X42_Y16_N17
\inst3|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[7]~30_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(7));

-- Location: LCCOMB_X2_Y18_N16
\inst5|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|cnt\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|cnt\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|cnt\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X2_Y18_N22
\inst5|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|cnt\(11) & (!\inst5|Add0~21\)) # (!\inst5|cnt\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X2_Y18_N24
\inst5|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|cnt\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|cnt\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|cnt\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X2_Y18_N26
\inst5|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|cnt\(13) & (!\inst5|Add0~25\)) # (!\inst5|cnt\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X2_Y18_N28
\inst5|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|cnt\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|cnt\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|cnt\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X2_Y18_N30
\inst5|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = \inst5|Add0~29\ $ (\inst5|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|cnt\(15),
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\);

-- Location: LCCOMB_X42_Y16_N12
\inst3|cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[5]~26_combout\ = (\inst3|cnt\(5) & (!\inst3|cnt[4]~25\)) # (!\inst3|cnt\(5) & ((\inst3|cnt[4]~25\) # (GND)))
-- \inst3|cnt[5]~27\ = CARRY((!\inst3|cnt[4]~25\) # (!\inst3|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(5),
	datad => VCC,
	cin => \inst3|cnt[4]~25\,
	combout => \inst3|cnt[5]~26_combout\,
	cout => \inst3|cnt[5]~27\);

-- Location: LCCOMB_X42_Y16_N16
\inst3|cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[7]~30_combout\ = (\inst3|cnt\(7) & (!\inst3|cnt[6]~29\)) # (!\inst3|cnt\(7) & ((\inst3|cnt[6]~29\) # (GND)))
-- \inst3|cnt[7]~31\ = CARRY((!\inst3|cnt[6]~29\) # (!\inst3|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(7),
	datad => VCC,
	cin => \inst3|cnt[6]~29\,
	combout => \inst3|cnt[7]~30_combout\,
	cout => \inst3|cnt[7]~31\);

-- Location: LCCOMB_X42_Y16_N24
\inst3|cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[11]~38_combout\ = (\inst3|cnt\(11) & (!\inst3|cnt[10]~37\)) # (!\inst3|cnt\(11) & ((\inst3|cnt[10]~37\) # (GND)))
-- \inst3|cnt[11]~39\ = CARRY((!\inst3|cnt[10]~37\) # (!\inst3|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(11),
	datad => VCC,
	cin => \inst3|cnt[10]~37\,
	combout => \inst3|cnt[11]~38_combout\,
	cout => \inst3|cnt[11]~39\);

-- Location: LCCOMB_X48_Y16_N12
\inst6|label_hex_display_3_port_map|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux6~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(14) & ((\inst7|label_shift_register_port_map|tmp\(12) & ((\inst7|label_shift_register_port_map|tmp\(15)) # (!\inst7|label_shift_register_port_map|tmp\(13)))) 
-- # (!\inst7|label_shift_register_port_map|tmp\(12) & ((!\inst7|label_shift_register_port_map|tmp\(15)))))) # (!\inst7|label_shift_register_port_map|tmp\(14) & ((\inst7|label_shift_register_port_map|tmp\(13)) # 
-- ((\inst7|label_shift_register_port_map|tmp\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(13),
	datab => \inst7|label_shift_register_port_map|tmp\(14),
	datac => \inst7|label_shift_register_port_map|tmp\(12),
	datad => \inst7|label_shift_register_port_map|tmp\(15),
	combout => \inst6|label_hex_display_3_port_map|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y16_N6
\inst6|label_hex_display_1_port_map|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux7~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(5) & (\inst7|label_shift_register_port_map|tmp\(7) & \inst7|label_shift_register_port_map|tmp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(5),
	datab => \inst7|label_shift_register_port_map|tmp\(7),
	datad => \inst7|label_shift_register_port_map|tmp\(6),
	combout => \inst6|label_hex_display_1_port_map|Mux7~0_combout\);

-- Location: LCFF_X35_Y18_N13
\inst|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state.RESET1~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.RESET1~regout\);

-- Location: LCFF_X33_Y17_N13
\inst|state.WRITE_ST3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~104_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ST3~regout\);

-- Location: LCFF_X36_Y18_N11
\inst|state.WRITE_ER2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~114_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ER2~regout\);

-- Location: LCFF_X31_Y17_N11
\inst|state.WRITE_OP2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~123_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP2~regout\);

-- Location: LCFF_X34_Y18_N3
\inst|state.WRITE_CL8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~127_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL8~regout\);

-- Location: LCFF_X32_Y18_N15
\inst|state.WRITE_OP8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~128_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP8~regout\);

-- Location: LCCOMB_X34_Y18_N20
\inst|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector9~3_combout\ = (\inst|state.DISPLAY_CLEAR~regout\) # ((\inst|DATA_BUS_VALUE\(0) & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|DATA_BUS_VALUE\(0),
	datac => \inst|state.TOGGLE_E~regout\,
	datad => \inst|state.DISPLAY_CLEAR~regout\,
	combout => \inst|Selector9~3_combout\);

-- Location: LCFF_X47_Y15_N21
\inst2|label_secret_code_register_port_map|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(14),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(14));

-- Location: LCFF_X47_Y15_N7
\inst2|label_secret_code_register_port_map|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(15),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(15));

-- Location: LCCOMB_X47_Y15_N6
\inst2|label_comparator_port_map|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~0_combout\ = (\inst2|label_secret_code_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(14) & (\inst2|label_secret_code_register_port_map|tmp\(15) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(15))))) # (!\inst2|label_secret_code_register_port_map|tmp\(14) & (!\inst7|label_shift_register_port_map|tmp\(14) & (\inst2|label_secret_code_register_port_map|tmp\(15) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|label_secret_code_register_port_map|tmp\(14),
	datab => \inst7|label_shift_register_port_map|tmp\(14),
	datac => \inst2|label_secret_code_register_port_map|tmp\(15),
	datad => \inst7|label_shift_register_port_map|tmp\(15),
	combout => \inst2|label_comparator_port_map|tmp~0_combout\);

-- Location: LCFF_X47_Y15_N5
\inst2|label_secret_code_register_port_map|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(12),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(12));

-- Location: LCFF_X47_Y15_N23
\inst2|label_secret_code_register_port_map|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(13),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(13));

-- Location: LCCOMB_X47_Y15_N22
\inst2|label_comparator_port_map|tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~1_combout\ = (\inst7|label_shift_register_port_map|tmp\(12) & (\inst2|label_secret_code_register_port_map|tmp\(12) & (\inst2|label_secret_code_register_port_map|tmp\(13) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(13))))) # (!\inst7|label_shift_register_port_map|tmp\(12) & (!\inst2|label_secret_code_register_port_map|tmp\(12) & (\inst2|label_secret_code_register_port_map|tmp\(13) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst2|label_secret_code_register_port_map|tmp\(12),
	datac => \inst2|label_secret_code_register_port_map|tmp\(13),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst2|label_comparator_port_map|tmp~1_combout\);

-- Location: LCFF_X47_Y15_N17
\inst2|label_secret_code_register_port_map|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(10),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(10));

-- Location: LCFF_X47_Y15_N27
\inst2|label_secret_code_register_port_map|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst2|label_secret_code_register_port_map|tmp[11]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(11));

-- Location: LCCOMB_X47_Y15_N16
\inst2|label_comparator_port_map|tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~2_combout\ = (\inst7|label_shift_register_port_map|tmp\(10) & (\inst2|label_secret_code_register_port_map|tmp\(10) & (\inst2|label_secret_code_register_port_map|tmp\(11) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(11))))) # (!\inst7|label_shift_register_port_map|tmp\(10) & (!\inst2|label_secret_code_register_port_map|tmp\(10) & (\inst2|label_secret_code_register_port_map|tmp\(11) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(10),
	datab => \inst2|label_secret_code_register_port_map|tmp\(11),
	datac => \inst2|label_secret_code_register_port_map|tmp\(10),
	datad => \inst7|label_shift_register_port_map|tmp\(11),
	combout => \inst2|label_comparator_port_map|tmp~2_combout\);

-- Location: LCFF_X51_Y16_N17
\inst2|label_secret_code_register_port_map|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(8),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(8));

-- Location: LCFF_X51_Y16_N29
\inst2|label_secret_code_register_port_map|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(9),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(9));

-- Location: LCCOMB_X51_Y16_N16
\inst2|label_comparator_port_map|tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~3_combout\ = (\inst7|label_shift_register_port_map|tmp\(8) & (\inst2|label_secret_code_register_port_map|tmp\(8) & (\inst2|label_secret_code_register_port_map|tmp\(9) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(9))))) # (!\inst7|label_shift_register_port_map|tmp\(8) & (!\inst2|label_secret_code_register_port_map|tmp\(8) & (\inst2|label_secret_code_register_port_map|tmp\(9) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst2|label_secret_code_register_port_map|tmp\(9),
	datac => \inst2|label_secret_code_register_port_map|tmp\(8),
	datad => \inst7|label_shift_register_port_map|tmp\(9),
	combout => \inst2|label_comparator_port_map|tmp~3_combout\);

-- Location: LCCOMB_X47_Y15_N28
\inst2|label_comparator_port_map|tmp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~4_combout\ = (\inst2|label_comparator_port_map|tmp~2_combout\ & (\inst2|label_comparator_port_map|tmp~1_combout\ & (\inst2|label_comparator_port_map|tmp~3_combout\ & \inst2|label_comparator_port_map|tmp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|label_comparator_port_map|tmp~2_combout\,
	datab => \inst2|label_comparator_port_map|tmp~1_combout\,
	datac => \inst2|label_comparator_port_map|tmp~3_combout\,
	datad => \inst2|label_comparator_port_map|tmp~0_combout\,
	combout => \inst2|label_comparator_port_map|tmp~4_combout\);

-- Location: LCFF_X51_Y16_N7
\inst2|label_secret_code_register_port_map|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(6),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(6));

-- Location: LCFF_X51_Y16_N11
\inst2|label_secret_code_register_port_map|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(7),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(7));

-- Location: LCCOMB_X51_Y16_N10
\inst2|label_comparator_port_map|tmp~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~5_combout\ = (\inst2|label_secret_code_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(7) $ 
-- (!\inst2|label_secret_code_register_port_map|tmp\(7))))) # (!\inst2|label_secret_code_register_port_map|tmp\(6) & (!\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(7) $ 
-- (!\inst2|label_secret_code_register_port_map|tmp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|label_secret_code_register_port_map|tmp\(6),
	datab => \inst7|label_shift_register_port_map|tmp\(7),
	datac => \inst2|label_secret_code_register_port_map|tmp\(7),
	datad => \inst7|label_shift_register_port_map|tmp\(6),
	combout => \inst2|label_comparator_port_map|tmp~5_combout\);

-- Location: LCFF_X32_Y18_N17
\inst|next_command.RETURN_OP_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector52~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.RETURN_OP_HOME~regout\);

-- Location: LCFF_X1_Y18_N31
\inst5|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(14));

-- Location: LCFF_X1_Y18_N15
\inst5|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(13));

-- Location: LCFF_X2_Y18_N31
\inst5|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~30_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(15));

-- Location: LCFF_X2_Y18_N25
\inst5|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~24_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(12));

-- Location: LCCOMB_X1_Y18_N10
\inst5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|cnt\(14) & (!\inst5|cnt\(12) & (\inst5|cnt\(13) & !\inst5|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(14),
	datab => \inst5|cnt\(12),
	datac => \inst5|cnt\(13),
	datad => \inst5|cnt\(15),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCFF_X1_Y18_N21
\inst5|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(8));

-- Location: LCFF_X33_Y17_N21
\inst|next_command.WRITE_ST3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector34~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ST3~regout\);

-- Location: LCCOMB_X33_Y17_N12
\inst|state~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~104_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ST3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_ST3~regout\,
	combout => \inst|state~104_combout\);

-- Location: LCFF_X31_Y17_N7
\inst|next_command.WRITE_CL1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector19~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL1~regout\);

-- Location: LCFF_X36_Y18_N19
\inst|next_command.WRITE_ER2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector29~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ER2~regout\);

-- Location: LCCOMB_X36_Y18_N10
\inst|state~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~114_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ER2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_ER2~regout\,
	combout => \inst|state~114_combout\);

-- Location: LCFF_X32_Y18_N13
\inst|next_command.WRITE_OP9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector47~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP9~regout\);

-- Location: LCFF_X31_Y17_N5
\inst|next_command.WRITE_OP2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector24~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP2~regout\);

-- Location: LCCOMB_X31_Y17_N10
\inst|state~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~123_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_OP2~regout\,
	combout => \inst|state~123_combout\);

-- Location: LCFF_X34_Y18_N11
\inst|next_command.WRITE_CL8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector44~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL8~regout\);

-- Location: LCCOMB_X34_Y18_N2
\inst|state~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~127_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL8~regout\,
	combout => \inst|state~127_combout\);

-- Location: LCFF_X32_Y18_N27
\inst|next_command.WRITE_OP8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector45~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP8~regout\);

-- Location: LCCOMB_X32_Y18_N14
\inst|state~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~128_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_OP8~regout\,
	combout => \inst|state~128_combout\);

-- Location: LCFF_X47_Y16_N9
\inst7|label_shift_control_port_map|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|cnt[2]~1_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|cnt\(2));

-- Location: LCCOMB_X46_Y16_N24
\inst4|label_debounce_port_map|button_out[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~16_combout\ = (!\inst4|label_debounce_port_map|column_tmp\(0) & (!\inst4|label_debounce_port_map|column_tmp\(2) & (\inst4|label_debounce_port_map|column_tmp\(3) $ 
-- (\inst4|label_debounce_port_map|column_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(0),
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|column_tmp\(1),
	datad => \inst4|label_debounce_port_map|column_tmp\(2),
	combout => \inst4|label_debounce_port_map|button_out[0]~16_combout\);

-- Location: LCCOMB_X44_Y16_N8
\inst4|label_debounce_port_map|button_out[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~25_combout\ = (\inst4|label_debounce_port_map|column_tmp\(3) & ((\inst4|label_debounce_port_map|column_tmp\(0)) # ((\inst4|label_debounce_port_map|column_tmp\(2)) # 
-- (\inst4|label_debounce_port_map|column_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(0),
	datab => \inst4|label_debounce_port_map|column_tmp\(2),
	datac => \inst4|label_debounce_port_map|column_tmp\(3),
	datad => \inst4|label_debounce_port_map|column_tmp\(1),
	combout => \inst4|label_debounce_port_map|button_out[3]~25_combout\);

-- Location: LCCOMB_X44_Y16_N6
\inst4|label_debounce_port_map|button_out[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~26_combout\ = (!\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\ & (\reset~combout\ & (\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ $ 
-- (\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	datab => \reset~combout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	combout => \inst4|label_debounce_port_map|button_out[3]~26_combout\);

-- Location: LCCOMB_X44_Y16_N0
\inst4|label_debounce_port_map|button_out[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~27_combout\ = \inst4|label_debounce_port_map|column_tmp\(1) $ (\inst4|label_debounce_port_map|column_tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|label_debounce_port_map|column_tmp\(1),
	datad => \inst4|label_debounce_port_map|column_tmp\(2),
	combout => \inst4|label_debounce_port_map|button_out[3]~27_combout\);

-- Location: LCCOMB_X44_Y16_N10
\inst4|label_debounce_port_map|button_out[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~28_combout\ = (\inst4|label_debounce_port_map|button_out[3]~25_combout\) # ((!\inst4|label_debounce_port_map|button_out[3]~27_combout\ & ((\inst4|label_debounce_port_map|button_out[3]~26_combout\) # 
-- (!\inst4|label_debounce_port_map|column_tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[3]~26_combout\,
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|button_out[3]~25_combout\,
	datad => \inst4|label_debounce_port_map|button_out[3]~27_combout\,
	combout => \inst4|label_debounce_port_map|button_out[3]~28_combout\);

-- Location: LCCOMB_X44_Y16_N20
\inst4|label_debounce_port_map|button_out[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~33_combout\ = ((\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\) # (\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\ $ (\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\))) # 
-- (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	datab => \reset~combout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~33_combout\);

-- Location: LCCOMB_X45_Y16_N10
\inst4|label_debounce_port_map|button_out[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~35_combout\ = (\inst4|label_debounce_port_map|button_out[3]~27_combout\ & ((\inst4|label_polling_rotator_port_map|sel[1]~2_combout\ & (!\inst4|label_polling_rotator_port_map|sel[3]~0_combout\)) # 
-- (!\inst4|label_polling_rotator_port_map|sel[1]~2_combout\ & (\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & \inst4|label_debounce_port_map|button_out~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|sel[1]~2_combout\,
	datab => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	datac => \inst4|label_debounce_port_map|button_out[3]~27_combout\,
	datad => \inst4|label_debounce_port_map|button_out~37_combout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~35_combout\);

-- Location: LCCOMB_X41_Y16_N6
\inst3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|cnt\(7) & (!\inst3|cnt\(4) & (\inst3|cnt\(3) & !\inst3|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(7),
	datab => \inst3|cnt\(4),
	datac => \inst3|cnt\(3),
	datad => \inst3|cnt\(10),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y18_N16
\inst|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|state.WRITE_OP9~regout\) # ((\inst|next_command.RETURN_OP_HOME~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.WRITE_OP9~regout\,
	datac => \inst|next_command.RETURN_OP_HOME~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector52~0_combout\);

-- Location: LCCOMB_X1_Y18_N30
\inst5|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~0_combout\ = (!\inst5|Equal0~4_combout\ & \inst5|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~4_combout\,
	datad => \inst5|Add0~28_combout\,
	combout => \inst5|cnt~0_combout\);

-- Location: LCCOMB_X1_Y18_N14
\inst5|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~1_combout\ = (\inst5|Add0~26_combout\ & !\inst5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~26_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~1_combout\);

-- Location: LCCOMB_X1_Y18_N20
\inst5|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~2_combout\ = (\inst5|Add0~16_combout\ & !\inst5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~16_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~2_combout\);

-- Location: LCCOMB_X33_Y17_N14
\inst|Selector34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector34~2_combout\ = (\inst|state.WRITE_ST2~regout\ & ((\inst|cnt\(2)) # ((\inst|cnt\(0) & \inst|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|state.WRITE_ST2~regout\,
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(2),
	combout => \inst|Selector34~2_combout\);

-- Location: LCCOMB_X32_Y17_N16
\inst|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector19~2_combout\ = (!\inst|correct~regout\ & (!\inst|error~regout\ & ((\inst|state.MODE_SET~regout\) # (\inst|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.MODE_SET~regout\,
	datab => \inst|Selector16~2_combout\,
	datac => \inst|correct~regout\,
	datad => \inst|error~regout\,
	combout => \inst|Selector19~2_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst|Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector20~2_combout\ = (\inst|correct~regout\ & ((\inst|state.RETURN_OP_HOME~regout\) # ((!\inst|error~regout\ & \inst|state.MODE_SET~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|error~regout\,
	datab => \inst|correct~regout\,
	datac => \inst|state.RETURN_OP_HOME~regout\,
	datad => \inst|state.MODE_SET~regout\,
	combout => \inst|Selector20~2_combout\);

-- Location: LCCOMB_X36_Y18_N18
\inst|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|state.WRITE_ER1~regout\) # ((\inst|next_command.WRITE_ER2~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER1~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ER2~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X32_Y18_N12
\inst|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector47~0_combout\ = (\inst|state.WRITE_OP8~regout\) # ((\inst|next_command.WRITE_OP9~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.WRITE_OP8~regout\,
	datac => \inst|next_command.WRITE_OP9~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector47~0_combout\);

-- Location: LCCOMB_X31_Y17_N4
\inst|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector24~0_combout\ = (\inst|state.WRITE_OP1~regout\) # ((\inst|next_command.WRITE_OP2~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP1~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_OP2~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector24~0_combout\);

-- Location: LCCOMB_X34_Y18_N10
\inst|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector44~0_combout\ = (\inst|state.WRITE_CL7~regout\) # ((\inst|next_command.WRITE_CL8~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL8~regout\,
	datad => \inst|state.WRITE_CL7~regout\,
	combout => \inst|Selector44~0_combout\);

-- Location: LCCOMB_X32_Y18_N26
\inst|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector45~0_combout\ = (\inst|state.WRITE_OP7~regout\) # ((\inst|next_command.WRITE_OP8~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.WRITE_OP7~regout\,
	datac => \inst|next_command.WRITE_OP8~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector45~0_combout\);

-- Location: LCFF_X48_Y16_N31
\inst7|label_shift_control_port_map|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|cnt[1]~2_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|cnt\(1));

-- Location: LCFF_X47_Y16_N11
\inst7|label_shift_control_port_map|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|cnt[0]~3_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|cnt\(0));

-- Location: LCCOMB_X47_Y16_N12
\inst7|label_shift_control_port_map|cnt[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|cnt[2]~0_combout\ = (\inst7|label_shift_control_port_map|cnt\(0) & \inst7|label_shift_control_port_map|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|label_shift_control_port_map|cnt\(0),
	datad => \inst7|label_shift_control_port_map|cnt\(1),
	combout => \inst7|label_shift_control_port_map|cnt[2]~0_combout\);

-- Location: LCCOMB_X47_Y16_N8
\inst7|label_shift_control_port_map|cnt[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|cnt[2]~1_combout\ = (\inst7|label_shift_control_port_map|cnt\(2)) # ((\inst7|label_shift_control_port_map|cnt[2]~0_combout\ & (\inst4|label_debounce_port_map|column_new~regout\ & 
-- \inst7|label_shift_control_port_map|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_control_port_map|cnt[2]~0_combout\,
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datac => \inst7|label_shift_control_port_map|cnt\(2),
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|cnt[2]~1_combout\);

-- Location: LCFF_X47_Y16_N17
\inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector6~6_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\);

-- Location: LCFF_X41_Y16_N11
\inst3|FSM_State.WAIT_FOR_EVAL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector5~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.WAIT_FOR_EVAL~regout\);

-- Location: LCCOMB_X48_Y16_N28
\inst7|label_shift_control_port_map|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~7_combout\ = ((!\inst4|label_debounce_port_map|button_out[2]~34_combout\ & (!\inst4|label_debounce_port_map|button_out[2]~35_combout\ & !\inst4|label_debounce_port_map|button_out[2]~31_combout\))) # 
-- (!\inst7|label_shift_control_port_map|num~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[2]~34_combout\,
	datab => \inst4|label_debounce_port_map|button_out[2]~35_combout\,
	datac => \inst4|label_debounce_port_map|button_out[2]~31_combout\,
	datad => \inst7|label_shift_control_port_map|num~2_combout\,
	combout => \inst7|label_shift_control_port_map|Equal0~7_combout\);

-- Location: LCCOMB_X48_Y16_N26
\inst7|label_shift_control_port_map|en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|en~1_combout\ = (\inst4|label_debounce_port_map|column_new~regout\ & ((\inst7|label_shift_control_port_map|Equal0~5_combout\) # ((!\inst4|label_debounce_port_map|button_out[3]~40_combout\ & 
-- \inst7|label_shift_control_port_map|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[3]~40_combout\,
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datac => \inst7|label_shift_control_port_map|Equal0~5_combout\,
	datad => \inst7|label_shift_control_port_map|Equal0~7_combout\,
	combout => \inst7|label_shift_control_port_map|en~1_combout\);

-- Location: LCCOMB_X48_Y16_N30
\inst7|label_shift_control_port_map|cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|cnt[1]~2_combout\ = \inst7|label_shift_control_port_map|cnt\(1) $ (((!\inst7|label_shift_control_port_map|cnt\(2) & (\inst7|label_shift_control_port_map|cnt\(0) & \inst7|label_shift_control_port_map|en~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_control_port_map|cnt\(2),
	datab => \inst7|label_shift_control_port_map|cnt\(0),
	datac => \inst7|label_shift_control_port_map|cnt\(1),
	datad => \inst7|label_shift_control_port_map|en~1_combout\,
	combout => \inst7|label_shift_control_port_map|cnt[1]~2_combout\);

-- Location: LCCOMB_X47_Y16_N10
\inst7|label_shift_control_port_map|cnt[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|cnt[0]~3_combout\ = \inst7|label_shift_control_port_map|cnt\(0) $ (((!\inst7|label_shift_control_port_map|cnt\(2) & (\inst4|label_debounce_port_map|column_new~regout\ & 
-- \inst7|label_shift_control_port_map|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_control_port_map|cnt\(2),
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datac => \inst7|label_shift_control_port_map|cnt\(0),
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|cnt[0]~3_combout\);

-- Location: LCCOMB_X47_Y15_N2
\inst4|label_debounce_port_map|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector6~2_combout\ = (\inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\) # ((\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\ & (!\inst4|label_debounce_port_map|LessThan0~0_combout\ & 
-- !\inst4|label_debounce_port_map|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	datab => \inst4|label_debounce_port_map|LessThan0~0_combout\,
	datac => \inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\,
	datad => \inst4|label_debounce_port_map|LessThan0~1_combout\,
	combout => \inst4|label_debounce_port_map|Selector6~2_combout\);

-- Location: LCCOMB_X43_Y16_N18
\inst4|label_debounce_port_map|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector6~4_combout\ = (\inst4|label_debounce_port_map|column_tmp\(2) & (!\column~combout\(2) & (\column~combout\(3) $ (\inst4|label_debounce_port_map|column_tmp\(3))))) # (!\inst4|label_debounce_port_map|column_tmp\(2) & 
-- (\column~combout\(2) & (\column~combout\(3) $ (\inst4|label_debounce_port_map|column_tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(2),
	datab => \column~combout\(3),
	datac => \inst4|label_debounce_port_map|column_tmp\(3),
	datad => \column~combout\(2),
	combout => \inst4|label_debounce_port_map|Selector6~4_combout\);

-- Location: LCCOMB_X41_Y16_N10
\inst3|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~0_combout\ = (\inst3|FSM_State.P_3~regout\ & ((\inst7|label_shift_control_port_map|en~regout\) # ((\inst3|FSM_State.WAIT_FOR_EVAL~regout\ & !\inst7|label_shift_control_port_map|ready_to_check~regout\)))) # (!\inst3|FSM_State.P_3~regout\ & 
-- (((\inst3|FSM_State.WAIT_FOR_EVAL~regout\ & !\inst7|label_shift_control_port_map|ready_to_check~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.P_3~regout\,
	datab => \inst7|label_shift_control_port_map|en~regout\,
	datac => \inst3|FSM_State.WAIT_FOR_EVAL~regout\,
	datad => \inst7|label_shift_control_port_map|ready_to_check~regout\,
	combout => \inst3|Selector5~0_combout\);

-- Location: LCCOMB_X40_Y16_N28
\inst3|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~2_combout\ = (\inst7|label_shift_control_port_map|en~regout\ & ((\inst3|FSM_State.P_2~regout\) # (!\inst3|FSM_State.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.IDLE~regout\,
	datac => \inst3|FSM_State.P_2~regout\,
	datad => \inst7|label_shift_control_port_map|en~regout\,
	combout => \inst3|Selector3~2_combout\);

-- Location: LCCOMB_X40_Y16_N12
\inst3|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = (\inst3|lcd\(1) & ((\inst3|WideOr8~0_combout\) # ((\inst3|FSM_State.P_3~regout\ & !\inst7|label_shift_control_port_map|en~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.P_3~regout\,
	datab => \inst3|WideOr8~0_combout\,
	datac => \inst3|lcd\(1),
	datad => \inst7|label_shift_control_port_map|en~regout\,
	combout => \inst3|Selector2~1_combout\);

-- Location: LCCOMB_X46_Y16_N12
\inst7|label_shift_control_port_map|num~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|num~7_combout\ = (\inst4|label_debounce_port_map|button_out[3]~40_combout\) # ((\reset~combout\ & (!\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\ & 
-- \inst4|label_debounce_port_map|button_out[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst4|label_debounce_port_map|button_out[3]~40_combout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	datad => \inst4|label_debounce_port_map|button_out[2]~36_combout\,
	combout => \inst7|label_shift_control_port_map|num~7_combout\);

-- Location: LCCOMB_X33_Y17_N20
\inst|Selector34~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector34~3_combout\ = (\inst|Selector34~2_combout\) # ((\inst|next_command.WRITE_ST3~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.TOGGLE_E~regout\,
	datab => \inst|Selector34~2_combout\,
	datac => \inst|next_command.WRITE_ST3~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector34~3_combout\);

-- Location: LCCOMB_X31_Y17_N6
\inst|Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector19~3_combout\ = (\inst|Selector19~2_combout\) # ((\inst|next_command.WRITE_CL1~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~2_combout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_CL1~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector19~3_combout\);

-- Location: LCCOMB_X47_Y16_N16
\inst4|label_debounce_port_map|Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector6~6_combout\ = (\inst4|label_debounce_port_map|Selector6~4_combout\ & (\inst4|label_debounce_port_map|Selector6~3_combout\ & \inst4|label_debounce_port_map|Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|Selector6~4_combout\,
	datac => \inst4|label_debounce_port_map|Selector6~3_combout\,
	datad => \inst4|label_debounce_port_map|Selector6~2_combout\,
	combout => \inst4|label_debounce_port_map|Selector6~6_combout\);

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\column[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_column(1),
	combout => \column~combout\(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(14),
	combout => \password~combout\(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(15),
	combout => \password~combout\(15));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(12),
	combout => \password~combout\(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(13),
	combout => \password~combout\(13));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(10),
	combout => \password~combout\(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(11),
	combout => \password~combout\(11));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(8),
	combout => \password~combout\(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(9),
	combout => \password~combout\(9));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(6),
	combout => \password~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(7),
	combout => \password~combout\(7));

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y15_N26
\inst2|label_secret_code_register_port_map|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_secret_code_register_port_map|tmp[11]~feeder_combout\ = \password~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(11),
	combout => \inst2|label_secret_code_register_port_map|tmp[11]~feeder_combout\);

-- Location: LCCOMB_X35_Y18_N12
\inst|state.RESET1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|state.RESET1~feeder_combout\);

-- Location: LCCOMB_X2_Y18_N0
\inst5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|cnt\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X1_Y18_N18
\inst5|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~6_combout\ = (\inst5|Add0~0_combout\ & !\inst5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~0_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~6_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X1_Y18_N19
\inst5|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~6_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(0));

-- Location: LCCOMB_X2_Y18_N2
\inst5|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|cnt\(1) & (!\inst5|Add0~1\)) # (!\inst5|cnt\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCFF_X2_Y18_N3
\inst5|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(1));

-- Location: LCCOMB_X2_Y18_N4
\inst5|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|cnt\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|cnt\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|cnt\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCFF_X2_Y18_N5
\inst5|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(2));

-- Location: LCCOMB_X2_Y18_N6
\inst5|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|cnt\(3) & (!\inst5|Add0~5\)) # (!\inst5|cnt\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X1_Y18_N24
\inst5|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~5_combout\ = (!\inst5|Equal0~4_combout\ & \inst5|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~4_combout\,
	datad => \inst5|Add0~6_combout\,
	combout => \inst5|cnt~5_combout\);

-- Location: LCFF_X1_Y18_N25
\inst5|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~5_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(3));

-- Location: LCCOMB_X2_Y18_N8
\inst5|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|cnt\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|cnt\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|cnt\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCFF_X2_Y18_N9
\inst5|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(4));

-- Location: LCCOMB_X2_Y18_N10
\inst5|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|cnt\(5) & (!\inst5|Add0~9\)) # (!\inst5|cnt\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X1_Y18_N26
\inst5|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~4_combout\ = (\inst5|Add0~10_combout\ & !\inst5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~10_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~4_combout\);

-- Location: LCFF_X1_Y18_N27
\inst5|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(5));

-- Location: LCCOMB_X2_Y18_N12
\inst5|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|cnt\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|cnt\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|cnt\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X2_Y18_N14
\inst5|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|cnt\(7) & (!\inst5|Add0~13\)) # (!\inst5|cnt\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X1_Y18_N6
\inst5|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~3_combout\ = (\inst5|Add0~14_combout\ & !\inst5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~3_combout\);

-- Location: LCFF_X1_Y18_N7
\inst5|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|cnt~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(7));

-- Location: LCCOMB_X2_Y18_N18
\inst5|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|cnt\(9) & (!\inst5|Add0~17\)) # (!\inst5|cnt\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCFF_X2_Y18_N19
\inst5|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(9));

-- Location: LCCOMB_X2_Y18_N20
\inst5|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|cnt\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|cnt\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|cnt\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCFF_X2_Y18_N21
\inst5|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(10));

-- Location: LCFF_X2_Y18_N23
\inst5|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~22_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(11));

-- Location: LCCOMB_X1_Y18_N22
\inst5|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\inst5|cnt\(8) & (!\inst5|cnt\(10) & (!\inst5|cnt\(11) & !\inst5|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(8),
	datab => \inst5|cnt\(10),
	datac => \inst5|cnt\(11),
	datad => \inst5|cnt\(9),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y18_N8
\inst5|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|cnt\(1) & (!\inst5|cnt\(0) & (\inst5|cnt\(3) & !\inst5|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(1),
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(3),
	datad => \inst5|cnt\(2),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCFF_X2_Y18_N13
\inst5|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|Add0~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(6));

-- Location: LCCOMB_X1_Y18_N28
\inst5|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (\inst5|cnt\(7) & (!\inst5|cnt\(4) & (!\inst5|cnt\(6) & \inst5|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(7),
	datab => \inst5|cnt\(4),
	datac => \inst5|cnt\(6),
	datad => \inst5|cnt\(5),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y18_N0
\inst5|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~0_combout\ & (\inst5|Equal0~1_combout\ & (\inst5|Equal0~3_combout\ & \inst5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal0~3_combout\,
	datad => \inst5|Equal0~2_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y18_N12
\inst5|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|f~0_combout\ = \inst5|f~regout\ $ (\inst5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|f~regout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|f~0_combout\);

-- Location: LCFF_X1_Y18_N13
\inst5|f\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|f~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|f~regout\);

-- Location: CLKCTRL_G0
\inst5|f~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|f~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|f~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y18_N6
\inst|LCD_RS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LCD_RS~0_combout\ = (!\inst|state.HOLD~regout\ & !\inst|state.TOGGLE_E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|LCD_RS~0_combout\);

-- Location: LCFF_X32_Y18_N11
\inst|state.TOGGLE_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst|LCD_RS~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.TOGGLE_E~regout\);

-- Location: LCCOMB_X32_Y18_N24
\inst|state.HOLD~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state.HOLD~feeder_combout\ = \inst|state.TOGGLE_E~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|state.HOLD~feeder_combout\);

-- Location: LCFF_X32_Y18_N25
\inst|state.HOLD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state.HOLD~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.HOLD~regout\);

-- Location: LCCOMB_X35_Y18_N28
\inst|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (\inst|state.RESET1~regout\ & ((\inst|next_command.RESET2~regout\) # ((!\inst|state.TOGGLE_E~regout\ & !\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.RESET1~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.RESET2~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector12~0_combout\);

-- Location: LCFF_X35_Y18_N29
\inst|next_command.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector12~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.RESET2~regout\);

-- Location: LCCOMB_X35_Y18_N18
\inst|state~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~99_combout\ = (\inst|state.HOLD~regout\ & !\inst|next_command.RESET2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.RESET2~regout\,
	combout => \inst|state~99_combout\);

-- Location: LCFF_X35_Y18_N19
\inst|state.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~99_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.RESET2~regout\);

-- Location: LCCOMB_X35_Y18_N14
\inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (\inst|state.RESET2~regout\) # ((\inst|next_command.RESET3~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.RESET3~regout\,
	datad => \inst|state.RESET2~regout\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCFF_X35_Y18_N15
\inst|next_command.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector13~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.RESET3~regout\);

-- Location: LCCOMB_X35_Y18_N20
\inst|state~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~100_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.RESET3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.RESET3~regout\,
	combout => \inst|state~100_combout\);

-- Location: LCFF_X35_Y18_N21
\inst|state.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~100_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.RESET3~regout\);

-- Location: LCCOMB_X35_Y18_N8
\inst|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector14~0_combout\ = (\inst|state.RESET3~regout\) # ((\inst|next_command.FUNC_SET~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.RESET3~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.FUNC_SET~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector14~0_combout\);

-- Location: LCFF_X35_Y18_N9
\inst|next_command.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector14~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.FUNC_SET~regout\);

-- Location: LCCOMB_X35_Y18_N26
\inst|state~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~101_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.FUNC_SET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.FUNC_SET~regout\,
	combout => \inst|state~101_combout\);

-- Location: LCFF_X35_Y18_N27
\inst|state.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~101_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.FUNC_SET~regout\);

-- Location: LCCOMB_X35_Y18_N0
\inst|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~3_combout\ = (\inst|state.RESET1~regout\ & (!\inst|state.RESET2~regout\ & (!\inst|state.RESET3~regout\ & !\inst|state.FUNC_SET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.RESET1~regout\,
	datab => \inst|state.RESET2~regout\,
	datac => \inst|state.RESET3~regout\,
	datad => \inst|state.FUNC_SET~regout\,
	combout => \inst|WideOr2~3_combout\);

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\column[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_column(2),
	combout => \column~combout\(2));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\column[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_column(0),
	combout => \column~combout\(0));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\column[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_column(3),
	combout => \column~combout\(3));

-- Location: LCCOMB_X43_Y16_N10
\inst4|label_debounce_port_map|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|process_0~0_combout\ = (\column~combout\(1) & ((\column~combout\(2) & (\column~combout\(0) $ (\column~combout\(3)))) # (!\column~combout\(2) & (\column~combout\(0) & \column~combout\(3))))) # (!\column~combout\(1) & 
-- (\column~combout\(2) & (\column~combout\(0) & \column~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(2),
	datac => \column~combout\(0),
	datad => \column~combout\(3),
	combout => \inst4|label_debounce_port_map|process_0~0_combout\);

-- Location: LCCOMB_X47_Y15_N24
\inst4|label_debounce_port_map|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector4~0_combout\ = (\inst4|label_debounce_port_map|Selector5~0_combout\) # ((!\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & \inst4|label_debounce_port_map|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\,
	datac => \inst4|label_debounce_port_map|process_0~0_combout\,
	datad => \inst4|label_debounce_port_map|Selector5~0_combout\,
	combout => \inst4|label_debounce_port_map|Selector4~0_combout\);

-- Location: LCFF_X47_Y15_N25
\inst4|label_debounce_port_map|Column_State.NO_SAMPLING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector4~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\);

-- Location: LCCOMB_X46_Y15_N4
\inst4|label_debounce_port_map|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~0_combout\ = \inst4|label_debounce_port_map|column_cnt\(0) $ (VCC)
-- \inst4|label_debounce_port_map|Add0~1\ = CARRY(\inst4|label_debounce_port_map|column_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_cnt\(0),
	datad => VCC,
	combout => \inst4|label_debounce_port_map|Add0~0_combout\,
	cout => \inst4|label_debounce_port_map|Add0~1\);

-- Location: LCCOMB_X46_Y15_N2
\inst4|label_debounce_port_map|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~20_combout\ = (\inst4|label_debounce_port_map|Add0~0_combout\ & \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|label_debounce_port_map|Add0~0_combout\,
	datad => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	combout => \inst4|label_debounce_port_map|Add0~20_combout\);

-- Location: LCFF_X46_Y15_N3
\inst4|label_debounce_port_map|column_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Add0~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(0));

-- Location: LCCOMB_X46_Y15_N6
\inst4|label_debounce_port_map|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~2_combout\ = (\inst4|label_debounce_port_map|column_cnt\(1) & (\inst4|label_debounce_port_map|Add0~1\ & VCC)) # (!\inst4|label_debounce_port_map|column_cnt\(1) & (!\inst4|label_debounce_port_map|Add0~1\))
-- \inst4|label_debounce_port_map|Add0~3\ = CARRY((!\inst4|label_debounce_port_map|column_cnt\(1) & !\inst4|label_debounce_port_map|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_cnt\(1),
	datad => VCC,
	cin => \inst4|label_debounce_port_map|Add0~1\,
	combout => \inst4|label_debounce_port_map|Add0~2_combout\,
	cout => \inst4|label_debounce_port_map|Add0~3\);

-- Location: LCCOMB_X46_Y15_N8
\inst4|label_debounce_port_map|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~4_combout\ = (\inst4|label_debounce_port_map|column_cnt\(2) & ((GND) # (!\inst4|label_debounce_port_map|Add0~3\))) # (!\inst4|label_debounce_port_map|column_cnt\(2) & (\inst4|label_debounce_port_map|Add0~3\ $ (GND)))
-- \inst4|label_debounce_port_map|Add0~5\ = CARRY((\inst4|label_debounce_port_map|column_cnt\(2)) # (!\inst4|label_debounce_port_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_cnt\(2),
	datad => VCC,
	cin => \inst4|label_debounce_port_map|Add0~3\,
	combout => \inst4|label_debounce_port_map|Add0~4_combout\,
	cout => \inst4|label_debounce_port_map|Add0~5\);

-- Location: LCCOMB_X46_Y15_N30
\inst4|label_debounce_port_map|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~18_combout\ = (\inst4|label_debounce_port_map|Add0~4_combout\ & \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|label_debounce_port_map|Add0~4_combout\,
	datad => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	combout => \inst4|label_debounce_port_map|Add0~18_combout\);

-- Location: LCFF_X46_Y15_N31
\inst4|label_debounce_port_map|column_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Add0~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(2));

-- Location: LCCOMB_X46_Y15_N10
\inst4|label_debounce_port_map|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~6_combout\ = (\inst4|label_debounce_port_map|column_cnt\(3) & (!\inst4|label_debounce_port_map|Add0~5\)) # (!\inst4|label_debounce_port_map|column_cnt\(3) & (\inst4|label_debounce_port_map|Add0~5\ & VCC))
-- \inst4|label_debounce_port_map|Add0~7\ = CARRY((\inst4|label_debounce_port_map|column_cnt\(3) & !\inst4|label_debounce_port_map|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_cnt\(3),
	datad => VCC,
	cin => \inst4|label_debounce_port_map|Add0~5\,
	combout => \inst4|label_debounce_port_map|Add0~6_combout\,
	cout => \inst4|label_debounce_port_map|Add0~7\);

-- Location: LCCOMB_X47_Y15_N30
\inst4|label_debounce_port_map|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector2~0_combout\ = (\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & ((!\inst4|label_debounce_port_map|Add0~6_combout\) # (!\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	datab => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\,
	datad => \inst4|label_debounce_port_map|Add0~6_combout\,
	combout => \inst4|label_debounce_port_map|Selector2~0_combout\);

-- Location: LCFF_X47_Y15_N31
\inst4|label_debounce_port_map|column_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector2~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(3));

-- Location: LCCOMB_X46_Y15_N12
\inst4|label_debounce_port_map|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~8_combout\ = (\inst4|label_debounce_port_map|column_cnt\(4) & ((GND) # (!\inst4|label_debounce_port_map|Add0~7\))) # (!\inst4|label_debounce_port_map|column_cnt\(4) & (\inst4|label_debounce_port_map|Add0~7\ $ (GND)))
-- \inst4|label_debounce_port_map|Add0~9\ = CARRY((\inst4|label_debounce_port_map|column_cnt\(4)) # (!\inst4|label_debounce_port_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_cnt\(4),
	datad => VCC,
	cin => \inst4|label_debounce_port_map|Add0~7\,
	combout => \inst4|label_debounce_port_map|Add0~8_combout\,
	cout => \inst4|label_debounce_port_map|Add0~9\);

-- Location: LCCOMB_X46_Y15_N26
\inst4|label_debounce_port_map|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~13_combout\ = (\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\ & \inst4|label_debounce_port_map|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	datad => \inst4|label_debounce_port_map|Add0~8_combout\,
	combout => \inst4|label_debounce_port_map|Add0~13_combout\);

-- Location: LCFF_X46_Y15_N27
\inst4|label_debounce_port_map|column_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Add0~13_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(4));

-- Location: LCCOMB_X46_Y15_N14
\inst4|label_debounce_port_map|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~10_combout\ = (\inst4|label_debounce_port_map|column_cnt\(5) & (\inst4|label_debounce_port_map|Add0~9\ & VCC)) # (!\inst4|label_debounce_port_map|column_cnt\(5) & (!\inst4|label_debounce_port_map|Add0~9\))
-- \inst4|label_debounce_port_map|Add0~11\ = CARRY((!\inst4|label_debounce_port_map|column_cnt\(5) & !\inst4|label_debounce_port_map|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_cnt\(5),
	datad => VCC,
	cin => \inst4|label_debounce_port_map|Add0~9\,
	combout => \inst4|label_debounce_port_map|Add0~10_combout\,
	cout => \inst4|label_debounce_port_map|Add0~11\);

-- Location: LCCOMB_X46_Y15_N0
\inst4|label_debounce_port_map|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~12_combout\ = (\inst4|label_debounce_port_map|Add0~10_combout\ & \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|label_debounce_port_map|Add0~10_combout\,
	datad => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	combout => \inst4|label_debounce_port_map|Add0~12_combout\);

-- Location: LCFF_X46_Y15_N1
\inst4|label_debounce_port_map|column_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Add0~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(5));

-- Location: LCCOMB_X46_Y15_N16
\inst4|label_debounce_port_map|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~14_combout\ = (\inst4|label_debounce_port_map|column_cnt\(6) & (\inst4|label_debounce_port_map|Add0~11\ $ (GND))) # (!\inst4|label_debounce_port_map|column_cnt\(6) & ((GND) # (!\inst4|label_debounce_port_map|Add0~11\)))
-- \inst4|label_debounce_port_map|Add0~15\ = CARRY((!\inst4|label_debounce_port_map|Add0~11\) # (!\inst4|label_debounce_port_map|column_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_cnt\(6),
	datad => VCC,
	cin => \inst4|label_debounce_port_map|Add0~11\,
	combout => \inst4|label_debounce_port_map|Add0~14_combout\,
	cout => \inst4|label_debounce_port_map|Add0~15\);

-- Location: LCCOMB_X46_Y15_N22
\inst4|label_debounce_port_map|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector1~0_combout\ = (\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & ((!\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\) # (!\inst4|label_debounce_port_map|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\,
	datac => \inst4|label_debounce_port_map|Add0~14_combout\,
	datad => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	combout => \inst4|label_debounce_port_map|Selector1~0_combout\);

-- Location: LCFF_X46_Y15_N23
\inst4|label_debounce_port_map|column_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector1~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(6));

-- Location: LCCOMB_X46_Y15_N18
\inst4|label_debounce_port_map|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~16_combout\ = \inst4|label_debounce_port_map|column_cnt\(7) $ (\inst4|label_debounce_port_map|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_cnt\(7),
	cin => \inst4|label_debounce_port_map|Add0~15\,
	combout => \inst4|label_debounce_port_map|Add0~16_combout\);

-- Location: LCCOMB_X46_Y15_N20
\inst4|label_debounce_port_map|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector0~0_combout\ = (\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & ((!\inst4|label_debounce_port_map|Add0~16_combout\) # (!\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	datac => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\,
	datad => \inst4|label_debounce_port_map|Add0~16_combout\,
	combout => \inst4|label_debounce_port_map|Selector0~0_combout\);

-- Location: LCFF_X46_Y15_N21
\inst4|label_debounce_port_map|column_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(7));

-- Location: LCCOMB_X46_Y15_N28
\inst4|label_debounce_port_map|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|LessThan0~0_combout\ = ((\inst4|label_debounce_port_map|column_cnt\(5)) # ((\inst4|label_debounce_port_map|column_cnt\(4)) # (!\inst4|label_debounce_port_map|column_cnt\(7)))) # 
-- (!\inst4|label_debounce_port_map|column_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_cnt\(6),
	datab => \inst4|label_debounce_port_map|column_cnt\(5),
	datac => \inst4|label_debounce_port_map|column_cnt\(7),
	datad => \inst4|label_debounce_port_map|column_cnt\(4),
	combout => \inst4|label_debounce_port_map|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y15_N24
\inst4|label_debounce_port_map|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Add0~19_combout\ = (\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\ & \inst4|label_debounce_port_map|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	datad => \inst4|label_debounce_port_map|Add0~2_combout\,
	combout => \inst4|label_debounce_port_map|Add0~19_combout\);

-- Location: LCFF_X46_Y15_N25
\inst4|label_debounce_port_map|column_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Add0~19_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_cnt\(1));

-- Location: LCCOMB_X47_Y15_N12
\inst4|label_debounce_port_map|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|LessThan0~1_combout\ = (\inst4|label_debounce_port_map|column_cnt\(0)) # (((\inst4|label_debounce_port_map|column_cnt\(2)) # (\inst4|label_debounce_port_map|column_cnt\(1))) # 
-- (!\inst4|label_debounce_port_map|column_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_cnt\(0),
	datab => \inst4|label_debounce_port_map|column_cnt\(3),
	datac => \inst4|label_debounce_port_map|column_cnt\(2),
	datad => \inst4|label_debounce_port_map|column_cnt\(1),
	combout => \inst4|label_debounce_port_map|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y15_N0
\inst4|label_debounce_port_map|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector5~0_combout\ = (\inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\ & ((\inst4|label_debounce_port_map|LessThan0~0_combout\) # (\inst4|label_debounce_port_map|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|Column_State.NO_SAMPLING~regout\,
	datab => \inst4|label_debounce_port_map|LessThan0~0_combout\,
	datad => \inst4|label_debounce_port_map|LessThan0~1_combout\,
	combout => \inst4|label_debounce_port_map|Selector5~0_combout\);

-- Location: LCCOMB_X43_Y16_N22
\inst4|label_debounce_port_map|column_tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|column_tmp~1_combout\ = (!\column~combout\(1) & (\column~combout\(2) & (\column~combout\(0) & \column~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(2),
	datac => \column~combout\(0),
	datad => \column~combout\(3),
	combout => \inst4|label_debounce_port_map|column_tmp~1_combout\);

-- Location: LCFF_X45_Y16_N23
\inst4|label_debounce_port_map|column_tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_debounce_port_map|column_tmp~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|ALT_INV_Column_State.SAMPLING~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_tmp\(1));

-- Location: LCCOMB_X43_Y16_N20
\inst4|label_debounce_port_map|column_tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|column_tmp~2_combout\ = (\column~combout\(1) & (\column~combout\(2) & (!\column~combout\(0) & \column~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(2),
	datac => \column~combout\(0),
	datad => \column~combout\(3),
	combout => \inst4|label_debounce_port_map|column_tmp~2_combout\);

-- Location: LCFF_X45_Y16_N29
\inst4|label_debounce_port_map|column_tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_debounce_port_map|column_tmp~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|ALT_INV_Column_State.SAMPLING~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_tmp\(0));

-- Location: LCCOMB_X43_Y16_N24
\inst4|label_debounce_port_map|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector6~3_combout\ = (\column~combout\(1) & (!\inst4|label_debounce_port_map|column_tmp\(1) & (\column~combout\(0) $ (\inst4|label_debounce_port_map|column_tmp\(0))))) # (!\column~combout\(1) & 
-- (\inst4|label_debounce_port_map|column_tmp\(1) & (\column~combout\(0) $ (\inst4|label_debounce_port_map|column_tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(0),
	datac => \inst4|label_debounce_port_map|column_tmp\(1),
	datad => \inst4|label_debounce_port_map|column_tmp\(0),
	combout => \inst4|label_debounce_port_map|Selector6~3_combout\);

-- Location: LCCOMB_X46_Y16_N26
\inst4|label_debounce_port_map|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector6~5_combout\ = (\inst4|label_debounce_port_map|Selector6~4_combout\ & \inst4|label_debounce_port_map|Selector6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|Selector6~4_combout\,
	datad => \inst4|label_debounce_port_map|Selector6~3_combout\,
	combout => \inst4|label_debounce_port_map|Selector6~5_combout\);

-- Location: LCCOMB_X46_Y16_N4
\inst4|label_debounce_port_map|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector5~1_combout\ = (\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & (((\inst4|label_debounce_port_map|Selector5~0_combout\) # (\inst4|label_debounce_port_map|Selector6~5_combout\)))) # 
-- (!\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & (\inst4|label_debounce_port_map|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|process_0~0_combout\,
	datab => \inst4|label_debounce_port_map|Selector5~0_combout\,
	datac => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\,
	datad => \inst4|label_debounce_port_map|Selector6~5_combout\,
	combout => \inst4|label_debounce_port_map|Selector5~1_combout\);

-- Location: LCFF_X46_Y16_N5
\inst4|label_debounce_port_map|Column_State.SAMPLING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector5~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\);

-- Location: LCCOMB_X47_Y16_N22
\inst4|label_debounce_port_map|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Selector3~0_combout\ = (\inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\ & ((\inst4|label_debounce_port_map|column_new~regout\) # ((!\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & 
-- \inst4|label_debounce_port_map|process_0~0_combout\)))) # (!\inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\ & (!\inst4|label_debounce_port_map|Column_State.SAMPLING~regout\ & ((\inst4|label_debounce_port_map|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|Column_State.WAIT_FOR_RELEASE~regout\,
	datab => \inst4|label_debounce_port_map|Column_State.SAMPLING~regout\,
	datac => \inst4|label_debounce_port_map|column_new~regout\,
	datad => \inst4|label_debounce_port_map|process_0~0_combout\,
	combout => \inst4|label_debounce_port_map|Selector3~0_combout\);

-- Location: LCFF_X47_Y16_N23
\inst4|label_debounce_port_map|column_new\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_debounce_port_map|Selector3~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_new~regout\);

-- Location: LCCOMB_X44_Y16_N12
\inst4|label_polling_rotator_port_map|Fsm_State.TWO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_polling_rotator_port_map|Fsm_State.TWO~0_combout\ = !\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	combout => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~0_combout\);

-- Location: LCCOMB_X43_Y16_N12
\inst4|label_debounce_port_map|freeze\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|freeze~combout\ = (\column~combout\(1) & (\column~combout\(2) & (\column~combout\(0) & \column~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(2),
	datac => \column~combout\(0),
	datad => \column~combout\(3),
	combout => \inst4|label_debounce_port_map|freeze~combout\);

-- Location: LCFF_X44_Y16_N13
\inst4|label_polling_rotator_port_map|Fsm_State.TWO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst4|label_debounce_port_map|freeze~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\);

-- Location: LCFF_X45_Y16_N9
\inst4|label_polling_rotator_port_map|Fsm_State.THREE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|freeze~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\);

-- Location: LCFF_X45_Y16_N25
\inst4|label_polling_rotator_port_map|Fsm_State.FOUR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|freeze~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\);

-- Location: LCCOMB_X44_Y16_N30
\inst4|label_polling_rotator_port_map|Fsm_State.ONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_polling_rotator_port_map|Fsm_State.ONE~0_combout\ = !\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	combout => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~0_combout\);

-- Location: LCFF_X45_Y16_N13
\inst4|label_polling_rotator_port_map|Fsm_State.ONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|freeze~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\);

-- Location: LCCOMB_X45_Y16_N0
\inst4|label_polling_rotator_port_map|sel[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_polling_rotator_port_map|sel[3]~0_combout\ = (\reset~combout\ & \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	combout => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\);

-- Location: LCCOMB_X43_Y16_N8
\inst4|label_debounce_port_map|column_tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|column_tmp~0_combout\ = (\column~combout\(1) & (!\column~combout\(2) & (\column~combout\(0) & \column~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(2),
	datac => \column~combout\(0),
	datad => \column~combout\(3),
	combout => \inst4|label_debounce_port_map|column_tmp~0_combout\);

-- Location: LCFF_X45_Y16_N31
\inst4|label_debounce_port_map|column_tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_debounce_port_map|column_tmp~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|ALT_INV_Column_State.SAMPLING~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_tmp\(2));

-- Location: LCCOMB_X45_Y16_N22
\inst4|label_debounce_port_map|button_out[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[1]~19_combout\ = (!\inst4|label_debounce_port_map|column_tmp\(3) & ((\inst4|label_debounce_port_map|column_tmp\(0) & (!\inst4|label_debounce_port_map|column_tmp\(1) & 
-- !\inst4|label_debounce_port_map|column_tmp\(2))) # (!\inst4|label_debounce_port_map|column_tmp\(0) & (\inst4|label_debounce_port_map|column_tmp\(1) $ (\inst4|label_debounce_port_map|column_tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(3),
	datab => \inst4|label_debounce_port_map|column_tmp\(0),
	datac => \inst4|label_debounce_port_map|column_tmp\(1),
	datad => \inst4|label_debounce_port_map|column_tmp\(2),
	combout => \inst4|label_debounce_port_map|button_out[1]~19_combout\);

-- Location: LCCOMB_X44_Y16_N22
\inst4|label_polling_rotator_port_map|sel[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_polling_rotator_port_map|sel[2]~1_combout\ = (\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	combout => \inst4|label_polling_rotator_port_map|sel[2]~1_combout\);

-- Location: LCCOMB_X45_Y16_N18
\inst4|label_debounce_port_map|button_out[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[1]~20_combout\ = (\inst4|label_polling_rotator_port_map|sel[1]~2_combout\ & ((\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & (!\inst4|label_debounce_port_map|button_out[1]~19_combout\ & 
-- !\inst4|label_polling_rotator_port_map|sel[2]~1_combout\)) # (!\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & ((\inst4|label_polling_rotator_port_map|sel[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|sel[1]~2_combout\,
	datab => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	datac => \inst4|label_debounce_port_map|button_out[1]~19_combout\,
	datad => \inst4|label_polling_rotator_port_map|sel[2]~1_combout\,
	combout => \inst4|label_debounce_port_map|button_out[1]~20_combout\);

-- Location: LCCOMB_X43_Y16_N26
\inst4|label_debounce_port_map|column_tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|column_tmp~3_combout\ = (\column~combout\(1) & (\column~combout\(2) & (\column~combout\(0) & !\column~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column~combout\(1),
	datab => \column~combout\(2),
	datac => \column~combout\(0),
	datad => \column~combout\(3),
	combout => \inst4|label_debounce_port_map|column_tmp~3_combout\);

-- Location: LCFF_X45_Y16_N5
\inst4|label_debounce_port_map|column_tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst4|label_debounce_port_map|column_tmp~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst4|label_debounce_port_map|ALT_INV_Column_State.SAMPLING~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|label_debounce_port_map|column_tmp\(3));

-- Location: LCCOMB_X46_Y16_N0
\inst4|label_debounce_port_map|button_out[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~13_combout\ = (!\inst4|label_debounce_port_map|column_tmp\(1) & (!\inst4|label_debounce_port_map|column_tmp\(0) & (\inst4|label_debounce_port_map|column_tmp\(3) $ 
-- (\inst4|label_debounce_port_map|column_tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(1),
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|column_tmp\(0),
	datad => \inst4|label_debounce_port_map|column_tmp\(2),
	combout => \inst4|label_debounce_port_map|button_out[0]~13_combout\);

-- Location: LCCOMB_X46_Y16_N28
\inst4|label_debounce_port_map|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Equal8~0_combout\ = (!\inst4|label_debounce_port_map|column_tmp\(1) & (\inst4|label_debounce_port_map|column_tmp\(3) & (!\inst4|label_debounce_port_map|column_tmp\(2) & !\inst4|label_debounce_port_map|column_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(1),
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|column_tmp\(2),
	datad => \inst4|label_debounce_port_map|column_tmp\(0),
	combout => \inst4|label_debounce_port_map|Equal8~0_combout\);

-- Location: LCCOMB_X45_Y16_N4
\inst4|label_debounce_port_map|button_out[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~12_combout\ = (\reset~combout\ & (!\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\ & !\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	combout => \inst4|label_debounce_port_map|button_out[0]~12_combout\);

-- Location: LCCOMB_X46_Y16_N2
\inst4|label_debounce_port_map|button_out[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[1]~18_combout\ = (\inst4|label_debounce_port_map|button_out[0]~12_combout\ & ((\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & (!\inst4|label_debounce_port_map|button_out[0]~10_combout\)) # 
-- (!\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & ((!\inst4|label_debounce_port_map|Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[0]~10_combout\,
	datab => \inst4|label_debounce_port_map|Equal8~0_combout\,
	datac => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	datad => \inst4|label_debounce_port_map|button_out[0]~12_combout\,
	combout => \inst4|label_debounce_port_map|button_out[1]~18_combout\);

-- Location: LCCOMB_X46_Y16_N16
\inst4|label_debounce_port_map|button_out[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[1]~21_combout\ = (\inst4|label_debounce_port_map|button_out[1]~20_combout\) # ((\inst4|label_debounce_port_map|button_out[1]~18_combout\) # ((\inst4|label_debounce_port_map|button_out[0]~15_combout\ & 
-- !\inst4|label_debounce_port_map|button_out[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[0]~15_combout\,
	datab => \inst4|label_debounce_port_map|button_out[1]~20_combout\,
	datac => \inst4|label_debounce_port_map|button_out[0]~13_combout\,
	datad => \inst4|label_debounce_port_map|button_out[1]~18_combout\,
	combout => \inst4|label_debounce_port_map|button_out[1]~21_combout\);

-- Location: LCCOMB_X46_Y16_N8
\inst7|label_shift_control_port_map|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~2_combout\ = (!\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ & ((\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\) # ((\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\ & 
-- \inst4|label_debounce_port_map|column_tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datab => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datac => \inst4|label_debounce_port_map|column_tmp\(0),
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	combout => \inst7|label_shift_control_port_map|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y16_N12
\inst7|label_shift_control_port_map|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~3_combout\ = (!\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\ & (!\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\ & (\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ & 
-- !\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	datab => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	combout => \inst7|label_shift_control_port_map|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y16_N16
\inst4|label_debounce_port_map|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|Equal6~0_combout\ = (\inst4|label_debounce_port_map|column_tmp\(2) & (!\inst4|label_debounce_port_map|column_tmp\(1) & (!\inst4|label_debounce_port_map|column_tmp\(3) & !\inst4|label_debounce_port_map|column_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(2),
	datab => \inst4|label_debounce_port_map|column_tmp\(1),
	datac => \inst4|label_debounce_port_map|column_tmp\(3),
	datad => \inst4|label_debounce_port_map|column_tmp\(0),
	combout => \inst4|label_debounce_port_map|Equal6~0_combout\);

-- Location: LCCOMB_X46_Y16_N20
\inst7|label_shift_control_port_map|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~0_combout\ = (\inst4|label_debounce_port_map|column_tmp\(2)) # ((\inst4|label_debounce_port_map|column_tmp\(1) & ((\inst4|label_debounce_port_map|column_tmp\(3)) # 
-- (\inst4|label_debounce_port_map|column_tmp\(0)))) # (!\inst4|label_debounce_port_map|column_tmp\(1) & (\inst4|label_debounce_port_map|column_tmp\(3) $ (!\inst4|label_debounce_port_map|column_tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(1),
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|column_tmp\(2),
	datad => \inst4|label_debounce_port_map|column_tmp\(0),
	combout => \inst7|label_shift_control_port_map|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y16_N10
\inst7|label_shift_control_port_map|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~1_combout\ = (\inst7|label_shift_control_port_map|Equal0~0_combout\ & ((\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\) # (!\inst4|label_debounce_port_map|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|Equal6~0_combout\,
	datac => \inst7|label_shift_control_port_map|Equal0~0_combout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	combout => \inst7|label_shift_control_port_map|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y16_N30
\inst7|label_shift_control_port_map|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~4_combout\ = ((\inst7|label_shift_control_port_map|Equal0~2_combout\) # ((\inst7|label_shift_control_port_map|Equal0~3_combout\) # (\inst7|label_shift_control_port_map|Equal0~1_combout\))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst7|label_shift_control_port_map|Equal0~2_combout\,
	datac => \inst7|label_shift_control_port_map|Equal0~3_combout\,
	datad => \inst7|label_shift_control_port_map|Equal0~1_combout\,
	combout => \inst7|label_shift_control_port_map|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y16_N24
\inst4|label_debounce_port_map|button_out[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~15_combout\ = (\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ & (\reset~combout\ & (!\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\ & 
-- \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datab => \reset~combout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	combout => \inst4|label_debounce_port_map|button_out[0]~15_combout\);

-- Location: LCCOMB_X45_Y16_N30
\inst4|label_debounce_port_map|button_out[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~10_combout\ = (!\inst4|label_debounce_port_map|column_tmp\(3) & (!\inst4|label_debounce_port_map|column_tmp\(1) & (\inst4|label_debounce_port_map|column_tmp\(0) $ 
-- (\inst4|label_debounce_port_map|column_tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(0),
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|column_tmp\(2),
	datad => \inst4|label_debounce_port_map|column_tmp\(1),
	combout => \inst4|label_debounce_port_map|button_out[0]~10_combout\);

-- Location: LCCOMB_X45_Y16_N6
\inst4|label_debounce_port_map|button_out[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~11_combout\ = (\inst4|label_polling_rotator_port_map|sel[1]~2_combout\ & ((\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & (!\inst4|label_polling_rotator_port_map|sel[2]~1_combout\ & 
-- !\inst4|label_debounce_port_map|button_out[0]~10_combout\)) # (!\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & (\inst4|label_polling_rotator_port_map|sel[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|sel[1]~2_combout\,
	datab => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	datac => \inst4|label_polling_rotator_port_map|sel[2]~1_combout\,
	datad => \inst4|label_debounce_port_map|button_out[0]~10_combout\,
	combout => \inst4|label_debounce_port_map|button_out[0]~11_combout\);

-- Location: LCCOMB_X46_Y16_N6
\inst4|label_debounce_port_map|button_out[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~14_combout\ = (\inst4|label_debounce_port_map|button_out[0]~12_combout\ & ((\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & (!\inst4|label_debounce_port_map|button_out[0]~13_combout\)) # 
-- (!\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & ((!\inst4|label_debounce_port_map|button_out[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	datab => \inst4|label_debounce_port_map|button_out[0]~13_combout\,
	datac => \inst4|label_debounce_port_map|button_out[0]~10_combout\,
	datad => \inst4|label_debounce_port_map|button_out[0]~12_combout\,
	combout => \inst4|label_debounce_port_map|button_out[0]~14_combout\);

-- Location: LCCOMB_X46_Y16_N14
\inst4|label_debounce_port_map|button_out[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[0]~17_combout\ = (\inst4|label_debounce_port_map|button_out[0]~11_combout\) # ((\inst4|label_debounce_port_map|button_out[0]~14_combout\) # ((!\inst4|label_debounce_port_map|button_out[0]~16_combout\ & 
-- \inst4|label_debounce_port_map|button_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[0]~16_combout\,
	datab => \inst4|label_debounce_port_map|button_out[0]~15_combout\,
	datac => \inst4|label_debounce_port_map|button_out[0]~11_combout\,
	datad => \inst4|label_debounce_port_map|button_out[0]~14_combout\,
	combout => \inst4|label_debounce_port_map|button_out[0]~17_combout\);

-- Location: LCCOMB_X47_Y16_N30
\inst7|label_shift_control_port_map|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~5_combout\ = (((\inst4|label_debounce_port_map|button_out~37_combout\ & \inst7|label_shift_control_port_map|Equal0~4_combout\)) # (!\inst4|label_debounce_port_map|button_out[0]~17_combout\)) # 
-- (!\inst4|label_debounce_port_map|button_out[1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out~37_combout\,
	datab => \inst4|label_debounce_port_map|button_out[1]~21_combout\,
	datac => \inst7|label_shift_control_port_map|Equal0~4_combout\,
	datad => \inst4|label_debounce_port_map|button_out[0]~17_combout\,
	combout => \inst7|label_shift_control_port_map|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y16_N16
\inst4|label_polling_rotator_port_map|sel[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_polling_rotator_port_map|sel[0]~3_combout\ = (\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	combout => \inst4|label_polling_rotator_port_map|sel[0]~3_combout\);

-- Location: LCCOMB_X44_Y16_N14
\inst4|label_debounce_port_map|button_out[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~24_combout\ = (\inst4|label_polling_rotator_port_map|sel[2]~1_combout\ & ((\inst4|label_debounce_port_map|column_tmp\(0)) # ((\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\) # 
-- (!\inst4|label_polling_rotator_port_map|sel[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(0),
	datab => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datac => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	datad => \inst4|label_polling_rotator_port_map|sel[2]~1_combout\,
	combout => \inst4|label_debounce_port_map|button_out[3]~24_combout\);

-- Location: LCCOMB_X45_Y16_N14
\inst4|label_debounce_port_map|button_out[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~22_combout\ = ((!\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ & ((\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\) # (\inst4|label_debounce_port_map|column_tmp\(0))))) # 
-- (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datab => \reset~combout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datad => \inst4|label_debounce_port_map|column_tmp\(0),
	combout => \inst4|label_debounce_port_map|button_out[3]~22_combout\);

-- Location: LCCOMB_X45_Y16_N20
\inst4|label_debounce_port_map|button_out[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~23_combout\ = (\inst4|label_debounce_port_map|button_out[3]~22_combout\) # ((\inst4|label_polling_rotator_port_map|sel[3]~0_combout\ & ((!\inst4|label_debounce_port_map|Equal6~0_combout\) # 
-- (!\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	datab => \inst4|label_debounce_port_map|button_out[3]~22_combout\,
	datac => \inst4|label_debounce_port_map|Equal6~0_combout\,
	datad => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	combout => \inst4|label_debounce_port_map|button_out[3]~23_combout\);

-- Location: LCCOMB_X44_Y16_N2
\inst4|label_debounce_port_map|button_out[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~38_combout\ = (!\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\ & (\reset~combout\ & (!\inst4|label_debounce_port_map|column_tmp\(3) & \inst4|label_debounce_port_map|button_out[3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	datab => \reset~combout\,
	datac => \inst4|label_debounce_port_map|column_tmp\(3),
	datad => \inst4|label_debounce_port_map|button_out[3]~23_combout\,
	combout => \inst4|label_debounce_port_map|button_out[3]~38_combout\);

-- Location: LCCOMB_X44_Y16_N24
\inst7|label_shift_control_port_map|num~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|num~2_combout\ = (!\inst4|label_polling_rotator_port_map|sel[0]~3_combout\ & ((\inst4|label_debounce_port_map|button_out[3]~28_combout\) # ((\inst4|label_debounce_port_map|button_out[3]~24_combout\) # 
-- (\inst4|label_debounce_port_map|button_out[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[3]~28_combout\,
	datab => \inst4|label_polling_rotator_port_map|sel[0]~3_combout\,
	datac => \inst4|label_debounce_port_map|button_out[3]~24_combout\,
	datad => \inst4|label_debounce_port_map|button_out[3]~38_combout\,
	combout => \inst7|label_shift_control_port_map|num~2_combout\);

-- Location: LCCOMB_X44_Y16_N26
\inst4|label_debounce_port_map|button_out[2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~32_combout\ = (!\inst4|label_debounce_port_map|column_tmp\(3) & (\inst4|label_debounce_port_map|column_tmp\(2) $ (!\inst4|label_debounce_port_map|column_tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_tmp\(2),
	datac => \inst4|label_debounce_port_map|column_tmp\(3),
	datad => \inst4|label_debounce_port_map|column_tmp\(1),
	combout => \inst4|label_debounce_port_map|button_out[2]~32_combout\);

-- Location: LCCOMB_X45_Y16_N26
\inst4|label_debounce_port_map|button_out~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out~37_combout\ = (((!\reset~combout\) # (!\inst4|label_debounce_port_map|Equal6~0_combout\)) # (!\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\)) # 
-- (!\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datab => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	datac => \inst4|label_debounce_port_map|Equal6~0_combout\,
	datad => \reset~combout\,
	combout => \inst4|label_debounce_port_map|button_out~37_combout\);

-- Location: LCCOMB_X45_Y16_N28
\inst4|label_debounce_port_map|button_out[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~34_combout\ = (\inst4|label_debounce_port_map|button_out[2]~32_combout\ & ((\inst4|label_debounce_port_map|button_out[2]~33_combout\) # ((!\inst4|label_debounce_port_map|column_tmp\(0) & 
-- \inst4|label_debounce_port_map|button_out~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[2]~33_combout\,
	datab => \inst4|label_debounce_port_map|button_out[2]~32_combout\,
	datac => \inst4|label_debounce_port_map|column_tmp\(0),
	datad => \inst4|label_debounce_port_map|button_out~37_combout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~34_combout\);

-- Location: LCCOMB_X44_Y16_N4
\inst4|label_debounce_port_map|button_out[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~30_combout\ = (\inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\) # ((\inst4|label_debounce_port_map|column_tmp\(1) $ (\inst4|label_debounce_port_map|column_tmp\(2))) # (!\reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.TWO~regout\,
	datab => \reset~combout\,
	datac => \inst4|label_debounce_port_map|column_tmp\(1),
	datad => \inst4|label_debounce_port_map|column_tmp\(2),
	combout => \inst4|label_debounce_port_map|button_out[2]~30_combout\);

-- Location: LCCOMB_X44_Y16_N18
\inst4|label_debounce_port_map|button_out[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~29_combout\ = (\inst4|label_debounce_port_map|column_tmp\(0) & (\reset~combout\ & (\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\ $ 
-- (!\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(0),
	datab => \reset~combout\,
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~29_combout\);

-- Location: LCCOMB_X44_Y16_N28
\inst4|label_debounce_port_map|button_out[2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~39_combout\ = (\inst4|label_debounce_port_map|column_tmp\(1) & ((\inst4|label_polling_rotator_port_map|sel[2]~1_combout\) # ((\inst4|label_debounce_port_map|column_tmp\(2)) # 
-- (\inst4|label_debounce_port_map|button_out[2]~29_combout\)))) # (!\inst4|label_debounce_port_map|column_tmp\(1) & (\inst4|label_debounce_port_map|column_tmp\(2) & ((\inst4|label_polling_rotator_port_map|sel[2]~1_combout\) # 
-- (\inst4|label_debounce_port_map|button_out[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_tmp\(1),
	datab => \inst4|label_polling_rotator_port_map|sel[2]~1_combout\,
	datac => \inst4|label_debounce_port_map|column_tmp\(2),
	datad => \inst4|label_debounce_port_map|button_out[2]~29_combout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~39_combout\);

-- Location: LCCOMB_X45_Y16_N2
\inst4|label_debounce_port_map|button_out[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~31_combout\ = (\inst4|label_debounce_port_map|button_out[2]~39_combout\) # ((\inst4|label_debounce_port_map|column_tmp\(3) & ((\inst4|label_debounce_port_map|button_out[3]~23_combout\) # 
-- (\inst4|label_debounce_port_map|button_out[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[3]~23_combout\,
	datab => \inst4|label_debounce_port_map|column_tmp\(3),
	datac => \inst4|label_debounce_port_map|button_out[2]~30_combout\,
	datad => \inst4|label_debounce_port_map|button_out[2]~39_combout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~31_combout\);

-- Location: LCCOMB_X46_Y16_N18
\inst4|label_debounce_port_map|button_out[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[2]~36_combout\ = (\inst4|label_debounce_port_map|button_out[2]~35_combout\) # ((\inst4|label_debounce_port_map|button_out[2]~34_combout\) # (\inst4|label_debounce_port_map|button_out[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[2]~35_combout\,
	datac => \inst4|label_debounce_port_map|button_out[2]~34_combout\,
	datad => \inst4|label_debounce_port_map|button_out[2]~31_combout\,
	combout => \inst4|label_debounce_port_map|button_out[2]~36_combout\);

-- Location: LCCOMB_X47_Y16_N6
\inst7|label_shift_control_port_map|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|Equal0~6_combout\ = (\inst7|label_shift_control_port_map|Equal0~5_combout\) # ((!\inst4|label_debounce_port_map|button_out[3]~40_combout\ & ((!\inst4|label_debounce_port_map|button_out[2]~36_combout\) # 
-- (!\inst7|label_shift_control_port_map|num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[3]~40_combout\,
	datab => \inst7|label_shift_control_port_map|Equal0~5_combout\,
	datac => \inst7|label_shift_control_port_map|num~2_combout\,
	datad => \inst4|label_debounce_port_map|button_out[2]~36_combout\,
	combout => \inst7|label_shift_control_port_map|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y16_N18
\inst7|label_shift_control_port_map|ready_to_check~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|ready_to_check~0_combout\ = (\inst7|label_shift_control_port_map|ready_to_check~regout\) # ((\inst7|label_shift_control_port_map|cnt\(2) & (\inst4|label_debounce_port_map|column_new~regout\ & 
-- !\inst7|label_shift_control_port_map|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_control_port_map|cnt\(2),
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datac => \inst7|label_shift_control_port_map|ready_to_check~regout\,
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|ready_to_check~0_combout\);

-- Location: LCCOMB_X47_Y16_N20
\inst7|label_shift_control_port_map|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|en~0_combout\ = (\inst4|label_debounce_port_map|column_new~regout\ & (!\inst7|label_shift_control_port_map|ready_to_check~regout\ & \inst7|label_shift_control_port_map|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datac => \inst7|label_shift_control_port_map|ready_to_check~regout\,
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|en~0_combout\);

-- Location: LCFF_X47_Y16_N21
\inst7|label_shift_control_port_map|en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|en~0_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|en~regout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(4),
	combout => \password~combout\(4));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\save~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_save,
	combout => \save~combout\);

-- Location: LCFF_X47_Y15_N19
\inst2|label_secret_code_register_port_map|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(4),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(5),
	combout => \password~combout\(5));

-- Location: LCFF_X51_Y16_N9
\inst2|label_secret_code_register_port_map|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(5),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(5));

-- Location: LCCOMB_X47_Y16_N14
\inst7|label_shift_control_port_map|num~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|num~6_combout\ = (\inst4|label_debounce_port_map|button_out[0]~17_combout\ & ((\inst7|label_shift_control_port_map|Equal0~6_combout\) # (!\inst4|label_debounce_port_map|column_new~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|button_out[0]~17_combout\,
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|num~6_combout\);

-- Location: LCFF_X47_Y16_N15
\inst7|label_shift_control_port_map|num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|num~6_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|num\(0));

-- Location: LCFF_X47_Y16_N3
\inst7|label_shift_register_port_map|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_control_port_map|num\(0),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(0));

-- Location: LCFF_X49_Y16_N31
\inst7|label_shift_register_port_map|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(0),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(4));

-- Location: LCCOMB_X51_Y16_N8
\inst2|label_comparator_port_map|tmp~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~6_combout\ = (\inst7|label_shift_register_port_map|tmp\(5) & (\inst2|label_secret_code_register_port_map|tmp\(5) & (\inst2|label_secret_code_register_port_map|tmp\(4) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(4))))) # (!\inst7|label_shift_register_port_map|tmp\(5) & (!\inst2|label_secret_code_register_port_map|tmp\(5) & (\inst2|label_secret_code_register_port_map|tmp\(4) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(5),
	datab => \inst2|label_secret_code_register_port_map|tmp\(4),
	datac => \inst2|label_secret_code_register_port_map|tmp\(5),
	datad => \inst7|label_shift_register_port_map|tmp\(4),
	combout => \inst2|label_comparator_port_map|tmp~6_combout\);

-- Location: LCCOMB_X47_Y16_N4
\inst7|label_shift_control_port_map|num~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|num~4_combout\ = (\inst7|label_shift_control_port_map|num~7_combout\ & ((\inst7|label_shift_control_port_map|Equal0~6_combout\) # (!\inst4|label_debounce_port_map|column_new~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_control_port_map|num~7_combout\,
	datab => \inst4|label_debounce_port_map|column_new~regout\,
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|num~4_combout\);

-- Location: LCFF_X47_Y16_N5
\inst7|label_shift_control_port_map|num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|num~4_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|num\(2));

-- Location: LCFF_X47_Y16_N29
\inst7|label_shift_register_port_map|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_control_port_map|num\(2),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(3),
	combout => \password~combout\(3));

-- Location: LCFF_X49_Y16_N23
\inst2|label_secret_code_register_port_map|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(3),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(2),
	combout => \password~combout\(2));

-- Location: LCCOMB_X57_Y16_N10
\inst2|label_secret_code_register_port_map|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_secret_code_register_port_map|tmp[2]~feeder_combout\ = \password~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(2),
	combout => \inst2|label_secret_code_register_port_map|tmp[2]~feeder_combout\);

-- Location: LCFF_X57_Y16_N11
\inst2|label_secret_code_register_port_map|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst2|label_secret_code_register_port_map|tmp[2]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(2));

-- Location: LCCOMB_X49_Y16_N22
\inst2|label_comparator_port_map|tmp~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~7_combout\ = (\inst7|label_shift_register_port_map|tmp\(3) & (\inst2|label_secret_code_register_port_map|tmp\(3) & (\inst7|label_shift_register_port_map|tmp\(2) $ 
-- (!\inst2|label_secret_code_register_port_map|tmp\(2))))) # (!\inst7|label_shift_register_port_map|tmp\(3) & (!\inst2|label_secret_code_register_port_map|tmp\(3) & (\inst7|label_shift_register_port_map|tmp\(2) $ 
-- (!\inst2|label_secret_code_register_port_map|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(2),
	datac => \inst2|label_secret_code_register_port_map|tmp\(3),
	datad => \inst2|label_secret_code_register_port_map|tmp\(2),
	combout => \inst2|label_comparator_port_map|tmp~7_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(0),
	combout => \password~combout\(0));

-- Location: LCFF_X55_Y16_N1
\inst2|label_secret_code_register_port_map|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(0),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_password(1),
	combout => \password~combout\(1));

-- Location: LCFF_X55_Y16_N7
\inst2|label_secret_code_register_port_map|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \password~combout\(1),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|tmp\(1));

-- Location: LCCOMB_X47_Y16_N0
\inst7|label_shift_control_port_map|num~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|num~5_combout\ = (\inst4|label_debounce_port_map|button_out[1]~21_combout\ & ((\inst7|label_shift_control_port_map|Equal0~6_combout\) # (!\inst4|label_debounce_port_map|column_new~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_new~regout\,
	datab => \inst4|label_debounce_port_map|button_out[1]~21_combout\,
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|num~5_combout\);

-- Location: LCFF_X47_Y16_N1
\inst7|label_shift_control_port_map|num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|num~5_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|num\(1));

-- Location: LCFF_X47_Y16_N27
\inst7|label_shift_register_port_map|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_control_port_map|num\(1),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(1));

-- Location: LCCOMB_X55_Y16_N6
\inst2|label_comparator_port_map|tmp~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~8_combout\ = (\inst7|label_shift_register_port_map|tmp\(0) & (\inst2|label_secret_code_register_port_map|tmp\(0) & (\inst2|label_secret_code_register_port_map|tmp\(1) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(1))))) # (!\inst7|label_shift_register_port_map|tmp\(0) & (!\inst2|label_secret_code_register_port_map|tmp\(0) & (\inst2|label_secret_code_register_port_map|tmp\(1) $ 
-- (!\inst7|label_shift_register_port_map|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(0),
	datab => \inst2|label_secret_code_register_port_map|tmp\(0),
	datac => \inst2|label_secret_code_register_port_map|tmp\(1),
	datad => \inst7|label_shift_register_port_map|tmp\(1),
	combout => \inst2|label_comparator_port_map|tmp~8_combout\);

-- Location: LCCOMB_X51_Y16_N14
\inst2|label_comparator_port_map|tmp~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~9_combout\ = (\inst2|label_comparator_port_map|tmp~5_combout\ & (\inst2|label_comparator_port_map|tmp~6_combout\ & (\inst2|label_comparator_port_map|tmp~7_combout\ & \inst2|label_comparator_port_map|tmp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|label_comparator_port_map|tmp~5_combout\,
	datab => \inst2|label_comparator_port_map|tmp~6_combout\,
	datac => \inst2|label_comparator_port_map|tmp~7_combout\,
	datad => \inst2|label_comparator_port_map|tmp~8_combout\,
	combout => \inst2|label_comparator_port_map|tmp~9_combout\);

-- Location: LCCOMB_X48_Y16_N24
\inst2|label_comparator_port_map|tmp~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_comparator_port_map|tmp~10_combout\ = (\inst7|label_shift_control_port_map|ready_to_check~regout\ & (\inst2|label_comparator_port_map|tmp~4_combout\ & ((\inst2|label_comparator_port_map|tmp~9_combout\)))) # 
-- (!\inst7|label_shift_control_port_map|ready_to_check~regout\ & (((\inst2|label_comparator_port_map|tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|label_comparator_port_map|tmp~4_combout\,
	datab => \inst7|label_shift_control_port_map|ready_to_check~regout\,
	datac => \inst2|label_comparator_port_map|tmp~regout\,
	datad => \inst2|label_comparator_port_map|tmp~9_combout\,
	combout => \inst2|label_comparator_port_map|tmp~10_combout\);

-- Location: LCFF_X48_Y16_N25
\inst2|label_comparator_port_map|tmp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst2|label_comparator_port_map|tmp~10_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_comparator_port_map|tmp~regout\);

-- Location: LCCOMB_X42_Y16_N2
\inst3|cnt[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[0]~14_combout\ = \inst3|cnt\(0) $ (VCC)
-- \inst3|cnt[0]~15\ = CARRY(\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(0),
	datad => VCC,
	combout => \inst3|cnt[0]~14_combout\,
	cout => \inst3|cnt[0]~15\);

-- Location: LCCOMB_X42_Y16_N6
\inst3|cnt[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[2]~20_combout\ = (\inst3|cnt\(2) & (\inst3|cnt[1]~19\ $ (GND))) # (!\inst3|cnt\(2) & (!\inst3|cnt[1]~19\ & VCC))
-- \inst3|cnt[2]~21\ = CARRY((\inst3|cnt\(2) & !\inst3|cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datad => VCC,
	cin => \inst3|cnt[1]~19\,
	combout => \inst3|cnt[2]~20_combout\,
	cout => \inst3|cnt[2]~21\);

-- Location: LCCOMB_X41_Y16_N18
\inst3|cnt[11]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[11]~17_combout\ = (\inst3|FSM_State.WAIT_FOR_EVAL~regout\ & (((\inst7|label_shift_control_port_map|ready_to_check~regout\)))) # (!\inst3|FSM_State.WAIT_FOR_EVAL~regout\ & ((\inst3|FSM_State.HOLD_10~regout\) # 
-- ((\inst3|FSM_State.HOLD_5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.WAIT_FOR_EVAL~regout\,
	datab => \inst3|FSM_State.HOLD_10~regout\,
	datac => \inst3|FSM_State.HOLD_5~regout\,
	datad => \inst7|label_shift_control_port_map|ready_to_check~regout\,
	combout => \inst3|cnt[11]~17_combout\);

-- Location: LCFF_X42_Y16_N7
\inst3|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[2]~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(2));

-- Location: LCCOMB_X42_Y16_N0
\inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|cnt\(5) & (!\inst3|cnt\(0) & (!\inst3|cnt\(1) & !\inst3|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(5),
	datab => \inst3|cnt\(0),
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y16_N20
\inst3|cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[9]~34_combout\ = (\inst3|cnt\(9) & (!\inst3|cnt[8]~33\)) # (!\inst3|cnt\(9) & ((\inst3|cnt[8]~33\) # (GND)))
-- \inst3|cnt[9]~35\ = CARRY((!\inst3|cnt[8]~33\) # (!\inst3|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(9),
	datad => VCC,
	cin => \inst3|cnt[8]~33\,
	combout => \inst3|cnt[9]~34_combout\,
	cout => \inst3|cnt[9]~35\);

-- Location: LCFF_X42_Y16_N21
\inst3|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[9]~34_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(9));

-- Location: LCCOMB_X42_Y16_N30
\inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|cnt\(11) & (!\inst3|cnt\(6) & (\inst3|cnt\(9) & \inst3|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(11),
	datab => \inst3|cnt\(6),
	datac => \inst3|cnt\(9),
	datad => \inst3|cnt\(8),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y16_N12
\inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|Equal0~0_combout\ & \inst3|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y16_N8
\inst3|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|Equal1~0_combout\ & (!\inst3|cnt\(13) & (\inst3|cnt\(12) & \inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~0_combout\,
	datab => \inst3|cnt\(13),
	datac => \inst3|cnt\(12),
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X41_Y16_N16
\inst3|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~0_combout\ = (\inst3|FSM_State.WAIT_FOR_CMP~regout\ & (((!\inst3|Equal1~1_combout\ & \inst3|FSM_State.HOLD_5~regout\)) # (!\inst2|label_comparator_port_map|tmp~regout\))) # (!\inst3|FSM_State.WAIT_FOR_CMP~regout\ & 
-- (!\inst3|Equal1~1_combout\ & (\inst3|FSM_State.HOLD_5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.WAIT_FOR_CMP~regout\,
	datab => \inst3|Equal1~1_combout\,
	datac => \inst3|FSM_State.HOLD_5~regout\,
	datad => \inst2|label_comparator_port_map|tmp~regout\,
	combout => \inst3|Selector7~0_combout\);

-- Location: LCFF_X41_Y16_N17
\inst3|FSM_State.HOLD_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector7~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.HOLD_5~regout\);

-- Location: LCCOMB_X41_Y16_N0
\inst3|cnt[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[11]~16_combout\ = (\inst3|FSM_State.WAIT_FOR_EVAL~regout\) # ((\inst3|FSM_State.HOLD_5~regout\ & (\inst3|Equal1~1_combout\)) # (!\inst3|FSM_State.HOLD_5~regout\ & ((\inst3|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.WAIT_FOR_EVAL~regout\,
	datab => \inst3|FSM_State.HOLD_5~regout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|cnt[11]~16_combout\);

-- Location: LCFF_X42_Y16_N3
\inst3|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[0]~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(0));

-- Location: LCCOMB_X42_Y16_N4
\inst3|cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~18_combout\ = (\inst3|cnt\(1) & (!\inst3|cnt[0]~15\)) # (!\inst3|cnt\(1) & ((\inst3|cnt[0]~15\) # (GND)))
-- \inst3|cnt[1]~19\ = CARRY((!\inst3|cnt[0]~15\) # (!\inst3|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(1),
	datad => VCC,
	cin => \inst3|cnt[0]~15\,
	combout => \inst3|cnt[1]~18_combout\,
	cout => \inst3|cnt[1]~19\);

-- Location: LCFF_X42_Y16_N5
\inst3|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[1]~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(1));

-- Location: LCCOMB_X42_Y16_N8
\inst3|cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[3]~22_combout\ = (\inst3|cnt\(3) & (!\inst3|cnt[2]~21\)) # (!\inst3|cnt\(3) & ((\inst3|cnt[2]~21\) # (GND)))
-- \inst3|cnt[3]~23\ = CARRY((!\inst3|cnt[2]~21\) # (!\inst3|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(3),
	datad => VCC,
	cin => \inst3|cnt[2]~21\,
	combout => \inst3|cnt[3]~22_combout\,
	cout => \inst3|cnt[3]~23\);

-- Location: LCFF_X42_Y16_N9
\inst3|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[3]~22_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(3));

-- Location: LCCOMB_X42_Y16_N10
\inst3|cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[4]~24_combout\ = (\inst3|cnt\(4) & (\inst3|cnt[3]~23\ $ (GND))) # (!\inst3|cnt\(4) & (!\inst3|cnt[3]~23\ & VCC))
-- \inst3|cnt[4]~25\ = CARRY((\inst3|cnt\(4) & !\inst3|cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(4),
	datad => VCC,
	cin => \inst3|cnt[3]~23\,
	combout => \inst3|cnt[4]~24_combout\,
	cout => \inst3|cnt[4]~25\);

-- Location: LCCOMB_X42_Y16_N14
\inst3|cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[6]~28_combout\ = (\inst3|cnt\(6) & (\inst3|cnt[5]~27\ $ (GND))) # (!\inst3|cnt\(6) & (!\inst3|cnt[5]~27\ & VCC))
-- \inst3|cnt[6]~29\ = CARRY((\inst3|cnt\(6) & !\inst3|cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(6),
	datad => VCC,
	cin => \inst3|cnt[5]~27\,
	combout => \inst3|cnt[6]~28_combout\,
	cout => \inst3|cnt[6]~29\);

-- Location: LCFF_X42_Y16_N15
\inst3|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[6]~28_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(6));

-- Location: LCCOMB_X42_Y16_N18
\inst3|cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[8]~32_combout\ = (\inst3|cnt\(8) & (\inst3|cnt[7]~31\ $ (GND))) # (!\inst3|cnt\(8) & (!\inst3|cnt[7]~31\ & VCC))
-- \inst3|cnt[8]~33\ = CARRY((\inst3|cnt\(8) & !\inst3|cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(8),
	datad => VCC,
	cin => \inst3|cnt[7]~31\,
	combout => \inst3|cnt[8]~32_combout\,
	cout => \inst3|cnt[8]~33\);

-- Location: LCFF_X42_Y16_N19
\inst3|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[8]~32_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(8));

-- Location: LCCOMB_X42_Y16_N22
\inst3|cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[10]~36_combout\ = (\inst3|cnt\(10) & (\inst3|cnt[9]~35\ $ (GND))) # (!\inst3|cnt\(10) & (!\inst3|cnt[9]~35\ & VCC))
-- \inst3|cnt[10]~37\ = CARRY((\inst3|cnt\(10) & !\inst3|cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(10),
	datad => VCC,
	cin => \inst3|cnt[9]~35\,
	combout => \inst3|cnt[10]~36_combout\,
	cout => \inst3|cnt[10]~37\);

-- Location: LCFF_X42_Y16_N23
\inst3|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[10]~36_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(10));

-- Location: LCCOMB_X42_Y16_N26
\inst3|cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[12]~40_combout\ = (\inst3|cnt\(12) & (\inst3|cnt[11]~39\ $ (GND))) # (!\inst3|cnt\(12) & (!\inst3|cnt[11]~39\ & VCC))
-- \inst3|cnt[12]~41\ = CARRY((\inst3|cnt\(12) & !\inst3|cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(12),
	datad => VCC,
	cin => \inst3|cnt[11]~39\,
	combout => \inst3|cnt[12]~40_combout\,
	cout => \inst3|cnt[12]~41\);

-- Location: LCFF_X42_Y16_N27
\inst3|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[12]~40_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(12));

-- Location: LCCOMB_X42_Y16_N28
\inst3|cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[13]~42_combout\ = \inst3|cnt[12]~41\ $ (\inst3|cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|cnt\(13),
	cin => \inst3|cnt[12]~41\,
	combout => \inst3|cnt[13]~42_combout\);

-- Location: LCFF_X42_Y16_N29
\inst3|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[13]~42_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(13));

-- Location: LCFF_X42_Y16_N11
\inst3|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|cnt[4]~24_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \inst3|cnt[11]~16_combout\,
	ena => \inst3|cnt[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(4));

-- Location: LCCOMB_X41_Y16_N14
\inst3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|cnt\(7) & (\inst3|cnt\(4) & (!\inst3|cnt\(3) & \inst3|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(7),
	datab => \inst3|cnt\(4),
	datac => \inst3|cnt\(3),
	datad => \inst3|cnt\(10),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y16_N28
\inst3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (!\inst3|cnt\(12) & (\inst3|cnt\(13) & (\inst3|Equal0~3_combout\ & \inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(12),
	datab => \inst3|cnt\(13),
	datac => \inst3|Equal0~3_combout\,
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y16_N30
\inst3|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~0_combout\ = (\inst3|FSM_State.WAIT_FOR_CMP~regout\ & ((\inst2|label_comparator_port_map|tmp~regout\) # ((\inst3|FSM_State.HOLD_10~regout\ & !\inst3|Equal0~4_combout\)))) # (!\inst3|FSM_State.WAIT_FOR_CMP~regout\ & 
-- (((\inst3|FSM_State.HOLD_10~regout\ & !\inst3|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.WAIT_FOR_CMP~regout\,
	datab => \inst2|label_comparator_port_map|tmp~regout\,
	datac => \inst3|FSM_State.HOLD_10~regout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Selector6~0_combout\);

-- Location: LCFF_X41_Y16_N31
\inst3|FSM_State.HOLD_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector6~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.HOLD_10~regout\);

-- Location: LCCOMB_X41_Y16_N26
\inst3|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~0_combout\ = (\inst3|FSM_State.HOLD_5~regout\ & (!\inst3|Equal1~1_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|FSM_State.HOLD_10~regout\)))) # (!\inst3|FSM_State.HOLD_5~regout\ & (((!\inst3|Equal0~4_combout\)) # 
-- (!\inst3|FSM_State.HOLD_10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.HOLD_5~regout\,
	datab => \inst3|FSM_State.HOLD_10~regout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Selector4~0_combout\);

-- Location: LCCOMB_X41_Y16_N4
\inst3|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~1_combout\ = (\inst3|Selector4~0_combout\ & ((\inst7|label_shift_control_port_map|en~regout\) # (\inst3|FSM_State.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|label_shift_control_port_map|en~regout\,
	datac => \inst3|FSM_State.IDLE~regout\,
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector4~1_combout\);

-- Location: LCFF_X41_Y16_N5
\inst3|FSM_State.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector4~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.IDLE~regout\);

-- Location: LCCOMB_X41_Y16_N2
\inst3|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = (!\inst3|FSM_State.IDLE~regout\ & (!\inst3|FSM_State.HOLD_5~regout\ & !\inst3|FSM_State.HOLD_10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|FSM_State.IDLE~regout\,
	datac => \inst3|FSM_State.HOLD_5~regout\,
	datad => \inst3|FSM_State.HOLD_10~regout\,
	combout => \inst3|Selector0~0_combout\);

-- Location: LCCOMB_X48_Y16_N2
\inst3|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~1_combout\ = (!\inst3|Selector0~0_combout\ & ((\inst3|rfs~regout\) # (!\inst3|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Selector0~0_combout\,
	datac => \inst3|rfs~regout\,
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector0~1_combout\);

-- Location: LCFF_X48_Y16_N3
\inst3|rfs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector0~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|rfs~regout\);

-- Location: LCCOMB_X48_Y16_N0
\inst2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~0_combout\ = (\inst3|rfs~regout\) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \inst3|rfs~regout\,
	combout => \inst2|comb~0_combout\);

-- Location: LCFF_X47_Y16_N19
\inst7|label_shift_control_port_map|ready_to_check\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|ready_to_check~0_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|ready_to_check~regout\);

-- Location: LCCOMB_X41_Y16_N24
\inst3|FSM_State~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FSM_State~12_combout\ = (\inst3|FSM_State.WAIT_FOR_EVAL~regout\ & \inst7|label_shift_control_port_map|ready_to_check~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.WAIT_FOR_EVAL~regout\,
	datad => \inst7|label_shift_control_port_map|ready_to_check~regout\,
	combout => \inst3|FSM_State~12_combout\);

-- Location: LCFF_X41_Y16_N25
\inst3|FSM_State.WAIT_FOR_CMP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|FSM_State~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.WAIT_FOR_CMP~regout\);

-- Location: LCCOMB_X40_Y16_N18
\inst3|FSM_State.P_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FSM_State.P_1~0_combout\ = !\inst3|FSM_State.IDLE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|FSM_State.IDLE~regout\,
	combout => \inst3|FSM_State.P_1~0_combout\);

-- Location: LCFF_X40_Y16_N19
\inst3|FSM_State.P_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|FSM_State.P_1~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.P_1~regout\);

-- Location: LCCOMB_X40_Y16_N20
\inst3|FSM_State.P_2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FSM_State.P_2~feeder_combout\ = \inst3|FSM_State.P_1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|FSM_State.P_1~regout\,
	combout => \inst3|FSM_State.P_2~feeder_combout\);

-- Location: LCFF_X40_Y16_N21
\inst3|FSM_State.P_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|FSM_State.P_2~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.P_2~regout\);

-- Location: LCFF_X40_Y16_N31
\inst3|FSM_State.P_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst3|FSM_State.P_2~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|FSM_State.P_3~regout\);

-- Location: LCCOMB_X40_Y16_N14
\inst3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = (!\inst7|label_shift_control_port_map|en~regout\ & ((\inst3|FSM_State.P_1~regout\) # (\inst3|FSM_State.P_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|FSM_State.P_1~regout\,
	datac => \inst3|FSM_State.P_2~regout\,
	datad => \inst7|label_shift_control_port_map|en~regout\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LCCOMB_X41_Y16_N20
\inst3|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr8~0_combout\ = (\inst3|FSM_State.WAIT_FOR_EVAL~regout\) # ((\inst3|FSM_State.HOLD_5~regout\) # (\inst3|FSM_State.HOLD_10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.WAIT_FOR_EVAL~regout\,
	datac => \inst3|FSM_State.HOLD_5~regout\,
	datad => \inst3|FSM_State.HOLD_10~regout\,
	combout => \inst3|WideOr8~0_combout\);

-- Location: LCCOMB_X40_Y16_N16
\inst3|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = (\inst3|lcd\(2) & ((\inst3|FSM_State.P_3~regout\) # ((\inst3|Selector1~0_combout\) # (\inst3|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd\(2),
	datab => \inst3|FSM_State.P_3~regout\,
	datac => \inst3|Selector1~0_combout\,
	datad => \inst3|WideOr8~0_combout\,
	combout => \inst3|Selector1~1_combout\);

-- Location: LCCOMB_X40_Y16_N0
\inst3|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~2_combout\ = (\inst3|FSM_State.WAIT_FOR_CMP~regout\) # ((\inst3|Selector1~1_combout\) # ((\inst3|FSM_State.P_3~regout\ & \inst7|label_shift_control_port_map|en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.P_3~regout\,
	datab => \inst3|FSM_State.WAIT_FOR_CMP~regout\,
	datac => \inst3|Selector1~1_combout\,
	datad => \inst7|label_shift_control_port_map|en~regout\,
	combout => \inst3|Selector1~2_combout\);

-- Location: LCFF_X40_Y16_N1
\inst3|lcd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector1~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|lcd\(2));

-- Location: LCCOMB_X40_Y16_N10
\inst3|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = (\inst3|lcd\(1) & ((\inst3|FSM_State.P_1~regout\) # ((\inst3|FSM_State.P_2~regout\)))) # (!\inst3|lcd\(1) & (\inst7|label_shift_control_port_map|en~regout\ & ((\inst3|FSM_State.P_1~regout\) # (\inst3|FSM_State.P_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd\(1),
	datab => \inst3|FSM_State.P_1~regout\,
	datac => \inst3|FSM_State.P_2~regout\,
	datad => \inst7|label_shift_control_port_map|en~regout\,
	combout => \inst3|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y16_N22
\inst3|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~2_combout\ = (\inst3|Selector2~1_combout\) # ((\inst3|Selector2~0_combout\) # ((\inst3|FSM_State.WAIT_FOR_CMP~regout\ & \inst2|label_comparator_port_map|tmp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector2~1_combout\,
	datab => \inst3|FSM_State.WAIT_FOR_CMP~regout\,
	datac => \inst2|label_comparator_port_map|tmp~regout\,
	datad => \inst3|Selector2~0_combout\,
	combout => \inst3|Selector2~2_combout\);

-- Location: LCFF_X40_Y16_N23
\inst3|lcd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector2~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|lcd\(1));

-- Location: LCCOMB_X34_Y17_N10
\inst|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~3_combout\ = (!\inst3|lcd\(2) & \inst3|lcd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|lcd\(2),
	datad => \inst3|lcd\(1),
	combout => \inst|cnt~3_combout\);

-- Location: LCCOMB_X40_Y16_N8
\inst3|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~0_combout\ = (!\inst7|label_shift_control_port_map|en~regout\ & ((\inst3|FSM_State.P_3~regout\) # (\inst3|FSM_State.P_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|FSM_State.P_3~regout\,
	datac => \inst3|FSM_State.P_1~regout\,
	datad => \inst7|label_shift_control_port_map|en~regout\,
	combout => \inst3|Selector3~0_combout\);

-- Location: LCCOMB_X40_Y16_N26
\inst3|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~1_combout\ = (\inst3|lcd\(0) & ((\inst3|FSM_State.P_2~regout\) # ((\inst3|Selector3~0_combout\) # (\inst3|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|FSM_State.P_2~regout\,
	datab => \inst3|Selector3~0_combout\,
	datac => \inst3|lcd\(0),
	datad => \inst3|WideOr8~0_combout\,
	combout => \inst3|Selector3~1_combout\);

-- Location: LCCOMB_X40_Y16_N24
\inst3|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~3_combout\ = (\inst3|Selector3~2_combout\) # ((\inst3|Selector3~1_combout\) # ((\inst3|FSM_State.WAIT_FOR_CMP~regout\ & !\inst2|label_comparator_port_map|tmp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector3~2_combout\,
	datab => \inst3|FSM_State.WAIT_FOR_CMP~regout\,
	datac => \inst2|label_comparator_port_map|tmp~regout\,
	datad => \inst3|Selector3~1_combout\,
	combout => \inst3|Selector3~3_combout\);

-- Location: LCFF_X40_Y16_N25
\inst3|lcd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst3|Selector3~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|lcd\(0));

-- Location: LCCOMB_X34_Y17_N16
\inst|cnt[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~1_combout\ = (\inst|state.TOGGLE_E~regout\ & ((\inst3|lcd\(1) & ((!\inst3|lcd\(2)) # (!\inst3|lcd\(0)))) # (!\inst3|lcd\(1) & ((\inst3|lcd\(0)) # (\inst3|lcd\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd\(1),
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst3|lcd\(0),
	datad => \inst3|lcd\(2),
	combout => \inst|cnt[2]~1_combout\);

-- Location: LCFF_X34_Y17_N11
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|cnt~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X34_Y17_N28
\inst|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~2_combout\ = (\inst3|lcd\(2) & (!\inst3|lcd\(0) & !\inst3|lcd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|lcd\(2),
	datac => \inst3|lcd\(0),
	datad => \inst3|lcd\(1),
	combout => \inst|cnt~2_combout\);

-- Location: LCFF_X34_Y17_N29
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|cnt~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCCOMB_X33_Y17_N30
\inst|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (!\inst|cnt\(1) & !\inst|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(2),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X34_Y17_N12
\inst|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector38~0_combout\ = (\inst|state.WRITE_ST3~regout\ & ((\inst|cnt\(2)) # ((!\inst|LCD_RS~0_combout\ & \inst|next_command.WRITE_ST4~regout\)))) # (!\inst|state.WRITE_ST3~regout\ & (!\inst|LCD_RS~0_combout\ & 
-- (\inst|next_command.WRITE_ST4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ST3~regout\,
	datab => \inst|LCD_RS~0_combout\,
	datac => \inst|next_command.WRITE_ST4~regout\,
	datad => \inst|cnt\(2),
	combout => \inst|Selector38~0_combout\);

-- Location: LCFF_X34_Y17_N13
\inst|next_command.WRITE_ST4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector38~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ST4~regout\);

-- Location: LCCOMB_X34_Y17_N14
\inst|state~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~105_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ST4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_ST4~regout\,
	combout => \inst|state~105_combout\);

-- Location: LCFF_X34_Y17_N15
\inst|state.WRITE_ST4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~105_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ST4~regout\);

-- Location: LCCOMB_X35_Y18_N22
\inst|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~0_combout\ = (\inst|state.WRITE_CL8~regout\) # ((\inst|next_command.WRITE_CL9~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_CL8~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL9~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector46~0_combout\);

-- Location: LCFF_X35_Y18_N23
\inst|next_command.WRITE_CL9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector46~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL9~regout\);

-- Location: LCCOMB_X35_Y18_N24
\inst|state~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~119_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL9~regout\,
	combout => \inst|state~119_combout\);

-- Location: LCFF_X35_Y18_N25
\inst|state.WRITE_CL9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~119_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL9~regout\);

-- Location: LCCOMB_X34_Y18_N12
\inst|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector48~0_combout\ = (\inst|state.WRITE_CL9~regout\) # ((\inst|next_command.WRITE_CL10~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL10~regout\,
	datad => \inst|state.WRITE_CL9~regout\,
	combout => \inst|Selector48~0_combout\);

-- Location: LCFF_X34_Y18_N13
\inst|next_command.WRITE_CL10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector48~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL10~regout\);

-- Location: LCCOMB_X34_Y18_N0
\inst|state~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~129_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL10~regout\,
	combout => \inst|state~129_combout\);

-- Location: LCFF_X34_Y18_N1
\inst|state.WRITE_CL10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~129_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL10~regout\);

-- Location: LCCOMB_X34_Y18_N26
\inst|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector49~0_combout\ = (\inst|state.WRITE_CL10~regout\) # ((\inst|next_command.WRITE_CL11~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL11~regout\,
	datad => \inst|state.WRITE_CL10~regout\,
	combout => \inst|Selector49~0_combout\);

-- Location: LCFF_X34_Y18_N27
\inst|next_command.WRITE_CL11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector49~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL11~regout\);

-- Location: LCCOMB_X34_Y18_N22
\inst|state~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~130_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL11~regout\,
	combout => \inst|state~130_combout\);

-- Location: LCFF_X34_Y18_N23
\inst|state.WRITE_CL11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~130_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL11~regout\);

-- Location: LCCOMB_X33_Y17_N22
\inst|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector50~0_combout\ = (!\inst|cnt\(0) & (!\inst|cnt\(2) & (!\inst|cnt\(1) & \inst|state.WRITE_CL11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(1),
	datad => \inst|state.WRITE_CL11~regout\,
	combout => \inst|Selector50~0_combout\);

-- Location: LCCOMB_X34_Y17_N22
\inst|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector26~0_combout\ = (\inst|state.WRITE_ST0~regout\) # ((\inst|next_command.WRITE_ST1~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ST1~regout\,
	datad => \inst|state.WRITE_ST0~regout\,
	combout => \inst|Selector26~0_combout\);

-- Location: LCFF_X34_Y17_N23
\inst|next_command.WRITE_ST1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector26~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ST1~regout\);

-- Location: LCCOMB_X34_Y17_N24
\inst|state~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~102_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ST1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_ST1~regout\,
	combout => \inst|state~102_combout\);

-- Location: LCFF_X34_Y17_N25
\inst|state.WRITE_ST1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~102_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ST1~regout\);

-- Location: LCCOMB_X33_Y17_N10
\inst|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (\inst|LCD_RS~0_combout\ & (!\inst|LessThan3~0_combout\ & ((\inst|state.WRITE_ST1~regout\)))) # (!\inst|LCD_RS~0_combout\ & ((\inst|next_command.WRITE_ST2~regout\) # ((!\inst|LessThan3~0_combout\ & 
-- \inst|state.WRITE_ST1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LCD_RS~0_combout\,
	datab => \inst|LessThan3~0_combout\,
	datac => \inst|next_command.WRITE_ST2~regout\,
	datad => \inst|state.WRITE_ST1~regout\,
	combout => \inst|Selector30~0_combout\);

-- Location: LCFF_X33_Y17_N11
\inst|next_command.WRITE_ST2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector30~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ST2~regout\);

-- Location: LCCOMB_X33_Y17_N26
\inst|state~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~103_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ST2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_ST2~regout\,
	combout => \inst|state~103_combout\);

-- Location: LCFF_X33_Y17_N27
\inst|state.WRITE_ST2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~103_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ST2~regout\);

-- Location: LCCOMB_X33_Y17_N8
\inst|Selector50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector50~1_combout\ = (\inst|state.WRITE_ST2~regout\ & (((!\inst|cnt\(1))) # (!\inst|cnt\(0)))) # (!\inst|state.WRITE_ST2~regout\ & (((!\inst|cnt\(1) & \inst|state.WRITE_ST1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|state.WRITE_ST2~regout\,
	datac => \inst|cnt\(1),
	datad => \inst|state.WRITE_ST1~regout\,
	combout => \inst|Selector50~1_combout\);

-- Location: LCCOMB_X33_Y17_N18
\inst|Selector50~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector50~2_combout\ = (\inst|Selector50~0_combout\) # ((!\inst|cnt\(2) & ((\inst|state.WRITE_ST3~regout\) # (\inst|Selector50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ST3~regout\,
	datab => \inst|Selector50~0_combout\,
	datac => \inst|Selector50~1_combout\,
	datad => \inst|cnt\(2),
	combout => \inst|Selector50~2_combout\);

-- Location: LCCOMB_X33_Y17_N4
\inst|Selector50~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector50~3_combout\ = (\inst|state.WRITE_ST4~regout\) # ((\inst|Selector50~2_combout\) # ((!\inst|LCD_RS~0_combout\ & \inst|next_command.RETURN_HOME~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LCD_RS~0_combout\,
	datab => \inst|state.WRITE_ST4~regout\,
	datac => \inst|next_command.RETURN_HOME~regout\,
	datad => \inst|Selector50~2_combout\,
	combout => \inst|Selector50~3_combout\);

-- Location: LCFF_X33_Y17_N5
\inst|next_command.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector50~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.RETURN_HOME~regout\);

-- Location: LCCOMB_X33_Y17_N24
\inst|state~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~91_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.RETURN_HOME~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.RETURN_HOME~regout\,
	combout => \inst|state~91_combout\);

-- Location: LCFF_X33_Y17_N25
\inst|state.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~91_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.RETURN_HOME~regout\);

-- Location: LCCOMB_X33_Y17_N16
\inst|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector22~2_combout\ = (\inst|cnt\(0) & (((\inst|state.RETURN_HOME~regout\) # (\inst|state.WRITE_CL11~regout\)))) # (!\inst|cnt\(0) & (!\inst|LessThan3~0_combout\ & ((\inst|state.RETURN_HOME~regout\) # (\inst|state.WRITE_CL11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|LessThan3~0_combout\,
	datac => \inst|state.RETURN_HOME~regout\,
	datad => \inst|state.WRITE_CL11~regout\,
	combout => \inst|Selector22~2_combout\);

-- Location: LCCOMB_X34_Y17_N20
\inst|Selector22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector22~3_combout\ = (\inst|Selector22~2_combout\) # ((\inst|next_command.WRITE_ST0~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ST0~regout\,
	datad => \inst|Selector22~2_combout\,
	combout => \inst|Selector22~3_combout\);

-- Location: LCFF_X34_Y17_N21
\inst|next_command.WRITE_ST0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector22~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ST0~regout\);

-- Location: LCCOMB_X34_Y17_N2
\inst|state~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~98_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ST0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_ST0~regout\,
	combout => \inst|state~98_combout\);

-- Location: LCFF_X34_Y17_N3
\inst|state.WRITE_ST0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~98_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ST0~regout\);

-- Location: LCCOMB_X34_Y17_N6
\inst|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (!\inst3|lcd\(2) & ((\inst3|lcd\(0)) # (!\inst3|lcd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|lcd\(2),
	datac => \inst3|lcd\(0),
	datad => \inst3|lcd\(1),
	combout => \inst|cnt~0_combout\);

-- Location: LCFF_X34_Y17_N7
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|cnt~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCCOMB_X33_Y17_N28
\inst|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector16~2_combout\ = (\inst|state.RETURN_HOME~regout\ & (!\inst|cnt\(2) & (!\inst|cnt\(1) & !\inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.RETURN_HOME~regout\,
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(0),
	combout => \inst|Selector16~2_combout\);

-- Location: LCCOMB_X32_Y17_N12
\inst|correct~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|correct~0_combout\ = (!\inst3|lcd\(0) & (\inst3|lcd\(1) & \inst3|lcd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|lcd\(0),
	datac => \inst3|lcd\(1),
	datad => \inst3|lcd\(2),
	combout => \inst|correct~0_combout\);

-- Location: LCFF_X32_Y17_N13
\inst|correct\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|correct~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|state.TOGGLE_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|correct~regout\);

-- Location: LCCOMB_X36_Y18_N2
\inst|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector41~0_combout\ = (\inst|state.WRITE_ER4~regout\) # ((\inst|next_command.WRITE_ER5~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER4~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ER5~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector41~0_combout\);

-- Location: LCFF_X36_Y18_N3
\inst|next_command.WRITE_ER5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector41~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ER5~regout\);

-- Location: LCCOMB_X36_Y18_N30
\inst|state~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~118_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ER5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_ER5~regout\,
	combout => \inst|state~118_combout\);

-- Location: LCFF_X36_Y18_N31
\inst|state.WRITE_ER5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~118_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ER5~regout\);

-- Location: LCCOMB_X36_Y18_N22
\inst|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|state.WRITE_ER5~regout\) # ((\inst|next_command.RETURN_ER_HOME~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.TOGGLE_E~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.RETURN_ER_HOME~regout\,
	datad => \inst|state.WRITE_ER5~regout\,
	combout => \inst|Selector51~0_combout\);

-- Location: LCFF_X36_Y18_N23
\inst|next_command.RETURN_ER_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector51~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.RETURN_ER_HOME~regout\);

-- Location: LCCOMB_X32_Y17_N26
\inst|state~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~92_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.RETURN_ER_HOME~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.RETURN_ER_HOME~regout\,
	combout => \inst|state~92_combout\);

-- Location: LCFF_X32_Y17_N27
\inst|state.RETURN_ER_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~92_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.RETURN_ER_HOME~regout\);

-- Location: LCCOMB_X32_Y17_N24
\inst|state~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~93_combout\ = (\inst|next_command.RETURN_OP_HOME~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_command.RETURN_OP_HOME~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|state~93_combout\);

-- Location: LCFF_X32_Y17_N25
\inst|state.RETURN_OP_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~93_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.RETURN_OP_HOME~regout\);

-- Location: LCCOMB_X32_Y17_N6
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst3|lcd\(0) & (!\inst3|lcd\(1) & \inst3|lcd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|lcd\(0),
	datac => \inst3|lcd\(1),
	datad => \inst3|lcd\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCFF_X32_Y17_N7
\inst|error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Equal0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|state.TOGGLE_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|error~regout\);

-- Location: LCCOMB_X32_Y17_N30
\inst|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector16~0_combout\ = (\inst|correct~regout\ & (\inst|state.RETURN_ER_HOME~regout\ & ((!\inst|error~regout\)))) # (!\inst|correct~regout\ & ((\inst|state.RETURN_OP_HOME~regout\) # ((\inst|state.RETURN_ER_HOME~regout\ & !\inst|error~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|correct~regout\,
	datab => \inst|state.RETURN_ER_HOME~regout\,
	datac => \inst|state.RETURN_OP_HOME~regout\,
	datad => \inst|error~regout\,
	combout => \inst|Selector16~0_combout\);

-- Location: LCCOMB_X34_Y18_N6
\inst|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector15~0_combout\ = (\inst|state.FUNC_SET~regout\) # ((\inst|next_command.DISPLAY_OFF~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.FUNC_SET~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.DISPLAY_OFF~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector15~0_combout\);

-- Location: LCFF_X34_Y18_N7
\inst|next_command.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector15~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X33_Y18_N26
\inst|state~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~90_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.DISPLAY_OFF~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.DISPLAY_OFF~regout\,
	combout => \inst|state~90_combout\);

-- Location: LCFF_X33_Y18_N27
\inst|state.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~90_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X32_Y17_N28
\inst|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector16~1_combout\ = (\inst|Selector16~0_combout\) # ((\inst|state.DISPLAY_OFF~regout\) # ((!\inst|LCD_RS~0_combout\ & \inst|next_command.DISPLAY_CLEAR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LCD_RS~0_combout\,
	datab => \inst|Selector16~0_combout\,
	datac => \inst|state.DISPLAY_OFF~regout\,
	datad => \inst|next_command.DISPLAY_CLEAR~regout\,
	combout => \inst|Selector16~1_combout\);

-- Location: LCCOMB_X32_Y17_N22
\inst|Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector16~3_combout\ = (\inst|Selector16~1_combout\) # ((\inst|Selector16~2_combout\ & ((\inst|error~regout\) # (\inst|correct~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|error~regout\,
	datab => \inst|Selector16~2_combout\,
	datac => \inst|correct~regout\,
	datad => \inst|Selector16~1_combout\,
	combout => \inst|Selector16~3_combout\);

-- Location: LCFF_X32_Y17_N23
\inst|next_command.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector16~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X33_Y17_N0
\inst|state~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~95_combout\ = (\inst|next_command.DISPLAY_CLEAR~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.DISPLAY_CLEAR~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|state~95_combout\);

-- Location: LCFF_X33_Y17_N1
\inst|state.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~95_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X34_Y17_N26
\inst|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector17~0_combout\ = (\inst|state.DISPLAY_CLEAR~regout\) # ((\inst|next_command.DISPLAY_ON~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.DISPLAY_CLEAR~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.DISPLAY_ON~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector17~0_combout\);

-- Location: LCFF_X34_Y17_N27
\inst|next_command.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector17~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.DISPLAY_ON~regout\);

-- Location: LCCOMB_X34_Y17_N0
\inst|state~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~96_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.DISPLAY_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.DISPLAY_ON~regout\,
	combout => \inst|state~96_combout\);

-- Location: LCFF_X34_Y17_N1
\inst|state.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~96_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.DISPLAY_ON~regout\);

-- Location: LCCOMB_X33_Y18_N4
\inst|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|state.MODE_SET~regout\ & (!\inst|state.DISPLAY_CLEAR~regout\ & (\inst|LCD_RS~0_combout\ & !\inst|state.DISPLAY_ON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.MODE_SET~regout\,
	datab => \inst|state.DISPLAY_CLEAR~regout\,
	datac => \inst|LCD_RS~0_combout\,
	datad => \inst|state.DISPLAY_ON~regout\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X32_Y17_N10
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|state.RETURN_OP_HOME~regout\ & (!\inst|state.RETURN_ER_HOME~regout\ & (!\inst|state.DISPLAY_OFF~regout\ & !\inst|state.RETURN_HOME~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.RETURN_OP_HOME~regout\,
	datab => \inst|state.RETURN_ER_HOME~regout\,
	datac => \inst|state.DISPLAY_OFF~regout\,
	datad => \inst|state.RETURN_HOME~regout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y18_N18
\inst|WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~2_combout\ = (!\inst|state.WRITE_ER0~regout\ & (!\inst|state.WRITE_ST0~regout\ & (\inst|WideOr2~1_combout\ & \inst|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER0~regout\,
	datab => \inst|state.WRITE_ST0~regout\,
	datac => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~2_combout\);

-- Location: LCCOMB_X32_Y18_N0
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|LCD_RS~0_combout\ & (\inst|WideOr2~3_combout\ & ((\inst|WideOr2~2_combout\)))) # (!\inst|LCD_RS~0_combout\ & ((\inst|LCD_RS~regout\) # ((\inst|WideOr2~3_combout\ & \inst|WideOr2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LCD_RS~0_combout\,
	datab => \inst|WideOr2~3_combout\,
	datac => \inst|LCD_RS~regout\,
	datad => \inst|WideOr2~2_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCFF_X32_Y18_N1
\inst|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector1~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LCD_RS~regout\);

-- Location: LCCOMB_X32_Y17_N18
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|state.RETURN_OP_HOME~regout\) # ((\inst|state.RETURN_ER_HOME~regout\) # ((\inst|state.WRITE_ST0~regout\) # (\inst|state.RETURN_HOME~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.RETURN_OP_HOME~regout\,
	datab => \inst|state.RETURN_ER_HOME~regout\,
	datac => \inst|state.WRITE_ST0~regout\,
	datad => \inst|state.RETURN_HOME~regout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X32_Y17_N14
\inst|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|next_command.WRITE_ER0~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.WRITE_ER0~regout\,
	datac => \inst|state.TOGGLE_E~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector21~0_combout\);

-- Location: LCCOMB_X34_Y17_N4
\inst|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector18~0_combout\ = (\inst|state.DISPLAY_ON~regout\) # ((\inst|next_command.MODE_SET~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.DISPLAY_ON~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.MODE_SET~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector18~0_combout\);

-- Location: LCFF_X34_Y17_N5
\inst|next_command.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector18~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.MODE_SET~regout\);

-- Location: LCCOMB_X33_Y17_N2
\inst|state~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~94_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.MODE_SET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.MODE_SET~regout\,
	combout => \inst|state~94_combout\);

-- Location: LCFF_X33_Y17_N3
\inst|state.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~94_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.MODE_SET~regout\);

-- Location: LCCOMB_X32_Y17_N8
\inst|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector21~1_combout\ = (\inst|Selector21~0_combout\) # ((\inst|error~regout\ & ((\inst|state.RETURN_ER_HOME~regout\) # (\inst|state.MODE_SET~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|error~regout\,
	datab => \inst|state.RETURN_ER_HOME~regout\,
	datac => \inst|Selector21~0_combout\,
	datad => \inst|state.MODE_SET~regout\,
	combout => \inst|Selector21~1_combout\);

-- Location: LCFF_X32_Y17_N9
\inst|next_command.WRITE_ER0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector21~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ER0~regout\);

-- Location: LCCOMB_X32_Y17_N0
\inst|state~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~97_combout\ = (\inst|next_command.WRITE_ER0~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.WRITE_ER0~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|state~97_combout\);

-- Location: LCFF_X32_Y17_N1
\inst|state.WRITE_ER0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~97_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ER0~regout\);

-- Location: LCCOMB_X32_Y17_N4
\inst|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst|state.WRITE_ER0~regout\) # ((!\inst|LCD_RS~0_combout\ & \inst|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LCD_RS~0_combout\,
	datab => \inst|Selector2~0_combout\,
	datac => \inst|DATA_BUS_VALUE\(7),
	datad => \inst|state.WRITE_ER0~regout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCFF_X32_Y17_N5
\inst|DATA_BUS_VALUE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector2~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X32_Y18_N10
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|DATA_BUS_VALUE\(6) & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datac => \inst|state.TOGGLE_E~regout\,
	datad => \inst|DATA_BUS_VALUE\(6),
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X35_Y18_N2
\inst|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|state.WRITE_CL3~regout\) # ((\inst|next_command.WRITE_CL4~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_CL3~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL4~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector31~0_combout\);

-- Location: LCFF_X35_Y18_N3
\inst|next_command.WRITE_CL4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector31~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL4~regout\);

-- Location: LCCOMB_X36_Y18_N28
\inst|state~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~115_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL4~regout\,
	combout => \inst|state~115_combout\);

-- Location: LCFF_X36_Y18_N29
\inst|state.WRITE_CL4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~115_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL4~regout\);

-- Location: LCCOMB_X35_Y18_N30
\inst|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector35~0_combout\ = (\inst|state.WRITE_CL4~regout\) # ((\inst|next_command.WRITE_CL5~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL5~regout\,
	datad => \inst|state.WRITE_CL4~regout\,
	combout => \inst|Selector35~0_combout\);

-- Location: LCFF_X35_Y18_N31
\inst|next_command.WRITE_CL5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector35~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL5~regout\);

-- Location: LCCOMB_X34_Y18_N14
\inst|state~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~106_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL5~regout\,
	combout => \inst|state~106_combout\);

-- Location: LCFF_X34_Y18_N15
\inst|state.WRITE_CL5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~106_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL5~regout\);

-- Location: LCCOMB_X33_Y18_N16
\inst|WideOr6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~1_combout\ = (!\inst|state.WRITE_OP5~regout\ & (\inst|WideOr2~1_combout\ & (!\inst|state.WRITE_CL5~regout\ & \inst|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP5~regout\,
	datab => \inst|WideOr2~1_combout\,
	datac => \inst|state.WRITE_CL5~regout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr6~1_combout\);

-- Location: LCCOMB_X33_Y17_N6
\inst|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (!\inst|state.WRITE_ST3~regout\ & (!\inst|state.WRITE_ST2~regout\ & (!\inst|state.WRITE_ST4~regout\ & !\inst|state.WRITE_ST1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ST3~regout\,
	datab => \inst|state.WRITE_ST2~regout\,
	datac => \inst|state.WRITE_ST4~regout\,
	datad => \inst|state.WRITE_ST1~regout\,
	combout => \inst|WideOr6~0_combout\);

-- Location: LCCOMB_X32_Y18_N2
\inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Selector3~0_combout\) # ((\inst|WideOr2~3_combout\ & (\inst|WideOr6~1_combout\ & \inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~3_combout\,
	datab => \inst|Selector3~0_combout\,
	datac => \inst|WideOr6~1_combout\,
	datad => \inst|WideOr6~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LCFF_X32_Y18_N3
\inst|DATA_BUS_VALUE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector3~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X34_Y18_N18
\inst|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector39~0_combout\ = (\inst|state.WRITE_CL5~regout\) # ((\inst|next_command.WRITE_CL6~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL6~regout\,
	datad => \inst|state.WRITE_CL5~regout\,
	combout => \inst|Selector39~0_combout\);

-- Location: LCFF_X34_Y18_N19
\inst|next_command.WRITE_CL6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector39~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL6~regout\);

-- Location: LCCOMB_X34_Y18_N30
\inst|state~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~112_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_CL6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_CL6~regout\,
	combout => \inst|state~112_combout\);

-- Location: LCFF_X34_Y18_N31
\inst|state.WRITE_CL6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~112_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL6~regout\);

-- Location: LCCOMB_X36_Y18_N20
\inst|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector25~0_combout\ = (\inst|state.WRITE_ER0~regout\) # ((\inst|next_command.WRITE_ER1~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER0~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ER1~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector25~0_combout\);

-- Location: LCFF_X36_Y18_N21
\inst|next_command.WRITE_ER1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector25~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ER1~regout\);

-- Location: LCCOMB_X36_Y18_N12
\inst|state~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~111_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ER1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_ER1~regout\,
	combout => \inst|state~111_combout\);

-- Location: LCFF_X36_Y18_N13
\inst|state.WRITE_ER1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~111_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ER1~regout\);

-- Location: LCCOMB_X31_Y17_N24
\inst|Selector20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector20~3_combout\ = (\inst|Selector20~2_combout\) # ((\inst|next_command.WRITE_OP1~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~2_combout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_OP1~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector20~3_combout\);

-- Location: LCFF_X31_Y17_N25
\inst|next_command.WRITE_OP1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector20~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP1~regout\);

-- Location: LCCOMB_X31_Y17_N30
\inst|state~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~109_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_OP1~regout\,
	combout => \inst|state~109_combout\);

-- Location: LCFF_X31_Y17_N31
\inst|state.WRITE_OP1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~109_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP1~regout\);

-- Location: LCCOMB_X31_Y17_N16
\inst|state~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~108_combout\ = (\inst|next_command.WRITE_CL1~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_command.WRITE_CL1~regout\,
	datac => \inst|state.HOLD~regout\,
	combout => \inst|state~108_combout\);

-- Location: LCFF_X31_Y17_N17
\inst|state.WRITE_CL1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~108_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL1~regout\);

-- Location: LCCOMB_X32_Y17_N20
\inst|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr7~0_combout\ = (!\inst|state.WRITE_OP1~regout\ & !\inst|state.WRITE_CL1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.WRITE_OP1~regout\,
	datad => \inst|state.WRITE_CL1~regout\,
	combout => \inst|WideOr7~0_combout\);

-- Location: LCCOMB_X33_Y18_N24
\inst|WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr7~1_combout\ = (!\inst|state.WRITE_OP6~regout\ & (!\inst|state.WRITE_CL6~regout\ & (!\inst|state.WRITE_ER1~regout\ & \inst|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP6~regout\,
	datab => \inst|state.WRITE_CL6~regout\,
	datac => \inst|state.WRITE_ER1~regout\,
	datad => \inst|WideOr7~0_combout\,
	combout => \inst|WideOr7~1_combout\);

-- Location: LCCOMB_X32_Y18_N4
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|LCD_RS~0_combout\ & (((!\inst|WideOr2~2_combout\)) # (!\inst|WideOr7~1_combout\))) # (!\inst|LCD_RS~0_combout\ & (\inst|DATA_BUS_VALUE\(5) & ((!\inst|WideOr2~2_combout\) # (!\inst|WideOr7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LCD_RS~0_combout\,
	datab => \inst|WideOr7~1_combout\,
	datac => \inst|DATA_BUS_VALUE\(5),
	datad => \inst|WideOr2~2_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCFF_X32_Y18_N5
\inst|DATA_BUS_VALUE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector4~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X35_Y18_N4
\inst|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector36~0_combout\ = (\inst|state.WRITE_OP4~regout\) # ((\inst|next_command.WRITE_OP5~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP4~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_OP5~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector36~0_combout\);

-- Location: LCFF_X35_Y18_N5
\inst|next_command.WRITE_OP5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector36~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP5~regout\);

-- Location: LCCOMB_X34_Y18_N24
\inst|state~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~107_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_OP5~regout\,
	combout => \inst|state~107_combout\);

-- Location: LCFF_X34_Y18_N25
\inst|state.WRITE_OP5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~107_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP5~regout\);

-- Location: LCCOMB_X34_Y18_N4
\inst|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector40~0_combout\ = (\inst|state.WRITE_OP5~regout\) # ((\inst|next_command.WRITE_OP6~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_OP6~regout\,
	datad => \inst|state.WRITE_OP5~regout\,
	combout => \inst|Selector40~0_combout\);

-- Location: LCFF_X34_Y18_N5
\inst|next_command.WRITE_OP6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector40~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP6~regout\);

-- Location: LCCOMB_X33_Y18_N10
\inst|state~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~110_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_OP6~regout\,
	combout => \inst|state~110_combout\);

-- Location: LCFF_X33_Y18_N11
\inst|state.WRITE_OP6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~110_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP6~regout\);

-- Location: LCCOMB_X32_Y18_N30
\inst|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = (\inst|state.WRITE_OP6~regout\) # ((\inst|next_command.WRITE_OP7~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.WRITE_OP6~regout\,
	datac => \inst|next_command.WRITE_OP7~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector43~0_combout\);

-- Location: LCFF_X32_Y18_N31
\inst|next_command.WRITE_OP7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector43~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP7~regout\);

-- Location: LCCOMB_X32_Y18_N8
\inst|state~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~113_combout\ = (\inst|next_command.WRITE_OP7~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.WRITE_OP7~regout\,
	datac => \inst|state.HOLD~regout\,
	combout => \inst|state~113_combout\);

-- Location: LCFF_X32_Y18_N9
\inst|state.WRITE_OP7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~113_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP7~regout\);

-- Location: LCCOMB_X32_Y18_N18
\inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|state.WRITE_OP7~regout\) # ((!\inst|DATA_BUS_VALUE\(4) & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|DATA_BUS_VALUE\(4),
	datac => \inst|state.WRITE_OP7~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X35_Y18_N16
\inst|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|state.WRITE_OP3~regout\) # ((\inst|next_command.WRITE_OP4~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP3~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_OP4~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector32~0_combout\);

-- Location: LCFF_X35_Y18_N17
\inst|next_command.WRITE_OP4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector32~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP4~regout\);

-- Location: LCCOMB_X35_Y18_N6
\inst|state~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~116_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_OP4~regout\,
	combout => \inst|state~116_combout\);

-- Location: LCFF_X35_Y18_N7
\inst|state.WRITE_OP4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~116_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP4~regout\);

-- Location: LCCOMB_X36_Y18_N24
\inst|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = (\inst|state.WRITE_ER2~regout\) # ((\inst|next_command.WRITE_ER3~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER2~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ER3~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector33~0_combout\);

-- Location: LCFF_X36_Y18_N25
\inst|next_command.WRITE_ER3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector33~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ER3~regout\);

-- Location: LCCOMB_X36_Y18_N6
\inst|state~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~117_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ER3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_ER3~regout\,
	combout => \inst|state~117_combout\);

-- Location: LCFF_X36_Y18_N7
\inst|state.WRITE_ER3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~117_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ER3~regout\);

-- Location: LCCOMB_X36_Y18_N4
\inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\inst|state.WRITE_ER2~regout\ & (!\inst|state.WRITE_CL4~regout\ & (!\inst|state.WRITE_OP4~regout\ & !\inst|state.WRITE_ER3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER2~regout\,
	datab => \inst|state.WRITE_CL4~regout\,
	datac => \inst|state.WRITE_OP4~regout\,
	datad => \inst|state.WRITE_ER3~regout\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X35_Y18_N10
\inst|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (!\inst|state.WRITE_ER5~regout\ & (!\inst|state.WRITE_CL9~regout\ & \inst|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WRITE_ER5~regout\,
	datac => \inst|state.WRITE_CL9~regout\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst|Selector8~1_combout\);

-- Location: LCCOMB_X32_Y18_N22
\inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (!\inst|Selector5~0_combout\ & (\inst|WideOr2~3_combout\ & \inst|Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector5~0_combout\,
	datac => \inst|WideOr2~3_combout\,
	datad => \inst|Selector8~1_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: LCFF_X32_Y18_N23
\inst|DATA_BUS_VALUE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector5~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X36_Y18_N8
\inst|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector37~0_combout\ = (\inst|state.WRITE_ER3~regout\) # ((\inst|next_command.WRITE_ER4~regout\ & ((\inst|state.TOGGLE_E~regout\) # (\inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_ER3~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_ER4~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|Selector37~0_combout\);

-- Location: LCFF_X36_Y18_N9
\inst|next_command.WRITE_ER4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector37~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_ER4~regout\);

-- Location: LCCOMB_X36_Y18_N16
\inst|state~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~126_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_ER4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_ER4~regout\,
	combout => \inst|state~126_combout\);

-- Location: LCFF_X36_Y18_N17
\inst|state.WRITE_ER4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~126_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_ER4~regout\);

-- Location: LCCOMB_X31_Y17_N0
\inst|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|state.WRITE_OP2~regout\) # ((\inst|next_command.WRITE_OP3~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP2~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_OP3~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector28~0_combout\);

-- Location: LCFF_X31_Y17_N1
\inst|next_command.WRITE_OP3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector28~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_OP3~regout\);

-- Location: LCCOMB_X31_Y17_N26
\inst|state~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~125_combout\ = (\inst|state.HOLD~regout\ & \inst|next_command.WRITE_OP3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.HOLD~regout\,
	datad => \inst|next_command.WRITE_OP3~regout\,
	combout => \inst|state~125_combout\);

-- Location: LCFF_X31_Y17_N27
\inst|state.WRITE_OP3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~125_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP3~regout\);

-- Location: LCCOMB_X31_Y17_N18
\inst|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (\inst|state.WRITE_CL1~regout\) # ((\inst|next_command.WRITE_CL2~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_CL1~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_CL2~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector23~0_combout\);

-- Location: LCFF_X31_Y17_N19
\inst|next_command.WRITE_CL2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector23~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL2~regout\);

-- Location: LCCOMB_X31_Y17_N8
\inst|state~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~122_combout\ = (\inst|next_command.WRITE_CL2~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.WRITE_CL2~regout\,
	datac => \inst|state.HOLD~regout\,
	combout => \inst|state~122_combout\);

-- Location: LCFF_X31_Y17_N9
\inst|state.WRITE_CL2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~122_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL2~regout\);

-- Location: LCCOMB_X31_Y17_N22
\inst|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (\inst|state.WRITE_CL2~regout\) # ((\inst|next_command.WRITE_CL3~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_CL2~regout\,
	datab => \inst|state.HOLD~regout\,
	datac => \inst|next_command.WRITE_CL3~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCFF_X31_Y17_N23
\inst|next_command.WRITE_CL3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector27~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL3~regout\);

-- Location: LCCOMB_X31_Y17_N28
\inst|state~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~124_combout\ = (\inst|next_command.WRITE_CL3~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.WRITE_CL3~regout\,
	datac => \inst|state.HOLD~regout\,
	combout => \inst|state~124_combout\);

-- Location: LCFF_X31_Y17_N29
\inst|state.WRITE_CL3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~124_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL3~regout\);

-- Location: LCCOMB_X31_Y17_N20
\inst|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (!\inst|state.WRITE_OP2~regout\ & (!\inst|state.WRITE_OP3~regout\ & (!\inst|state.WRITE_CL2~regout\ & !\inst|state.WRITE_CL3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP2~regout\,
	datab => \inst|state.WRITE_OP3~regout\,
	datac => \inst|state.WRITE_CL2~regout\,
	datad => \inst|state.WRITE_CL3~regout\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X32_Y18_N28
\inst|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (!\inst|state.WRITE_CL8~regout\ & (!\inst|state.WRITE_ER4~regout\ & (!\inst|state.WRITE_OP6~regout\ & \inst|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_CL8~regout\,
	datab => \inst|state.WRITE_ER4~regout\,
	datac => \inst|state.WRITE_OP6~regout\,
	datad => \inst|Selector9~0_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: LCCOMB_X33_Y18_N30
\inst|state~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~121_combout\ = (\inst|next_command.WRITE_OP9~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_command.WRITE_OP9~regout\,
	datad => \inst|state.HOLD~regout\,
	combout => \inst|state~121_combout\);

-- Location: LCFF_X33_Y18_N31
\inst|state.WRITE_OP9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~121_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_OP9~regout\);

-- Location: LCCOMB_X34_Y18_N8
\inst|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = (\inst|state.WRITE_CL6~regout\) # ((\inst|next_command.WRITE_CL7~regout\ & ((\inst|state.HOLD~regout\) # (\inst|state.TOGGLE_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datab => \inst|state.TOGGLE_E~regout\,
	datac => \inst|next_command.WRITE_CL7~regout\,
	datad => \inst|state.WRITE_CL6~regout\,
	combout => \inst|Selector42~0_combout\);

-- Location: LCFF_X34_Y18_N9
\inst|next_command.WRITE_CL7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector42~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|next_command.WRITE_CL7~regout\);

-- Location: LCCOMB_X34_Y18_N16
\inst|state~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~120_combout\ = (\inst|next_command.WRITE_CL7~regout\ & \inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_command.WRITE_CL7~regout\,
	datac => \inst|state.HOLD~regout\,
	combout => \inst|state~120_combout\);

-- Location: LCFF_X34_Y18_N17
\inst|state.WRITE_CL7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|state~120_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_CL7~regout\);

-- Location: LCCOMB_X33_Y18_N20
\inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\inst|state.WRITE_OP9~regout\ & (!\inst|state.WRITE_CL7~regout\ & !\inst|state.DISPLAY_ON~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WRITE_OP9~regout\,
	datac => \inst|state.WRITE_CL7~regout\,
	datad => \inst|state.DISPLAY_ON~regout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X33_Y18_N6
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|state.DISPLAY_OFF~regout\) # (((!\inst|LCD_RS~0_combout\ & !\inst|DATA_BUS_VALUE\(3))) # (!\inst|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.DISPLAY_OFF~regout\,
	datab => \inst|LCD_RS~0_combout\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|DATA_BUS_VALUE\(3),
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X33_Y18_N28
\inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|WideOr6~0_combout\ & (\inst|Selector9~1_combout\ & (\inst|WideOr2~3_combout\ & !\inst|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|Selector9~1_combout\,
	datac => \inst|WideOr2~3_combout\,
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: LCFF_X33_Y18_N29
\inst|DATA_BUS_VALUE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector6~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X33_Y18_N0
\inst|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector9~2_combout\ = (!\inst|state.WRITE_OP8~regout\ & (!\inst|state.WRITE_CL10~regout\ & (!\inst|state.WRITE_ER1~regout\ & \inst|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WRITE_OP8~regout\,
	datab => \inst|state.WRITE_CL10~regout\,
	datac => \inst|state.WRITE_ER1~regout\,
	datad => \inst|Selector9~1_combout\,
	combout => \inst|Selector9~2_combout\);

-- Location: LCCOMB_X33_Y18_N2
\inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst|state.MODE_SET~regout\) # (((\inst|DATA_BUS_VALUE\(2) & !\inst|LCD_RS~0_combout\)) # (!\inst|Selector9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.MODE_SET~regout\,
	datab => \inst|DATA_BUS_VALUE\(2),
	datac => \inst|LCD_RS~0_combout\,
	datad => \inst|Selector9~2_combout\,
	combout => \inst|Selector7~1_combout\);

-- Location: LCCOMB_X33_Y18_N22
\inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (((\inst|state.WRITE_CL11~regout\) # (\inst|Selector7~1_combout\)) # (!\inst|WideOr7~0_combout\)) # (!\inst|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|WideOr7~0_combout\,
	datac => \inst|state.WRITE_CL11~regout\,
	datad => \inst|Selector7~1_combout\,
	combout => \inst|Selector7~2_combout\);

-- Location: LCFF_X33_Y18_N23
\inst|DATA_BUS_VALUE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector7~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X33_Y18_N8
\inst|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~2_combout\ = (\inst|state.WRITE_OP9~regout\) # (\inst|state.WRITE_CL6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WRITE_OP9~regout\,
	datad => \inst|state.WRITE_CL6~regout\,
	combout => \inst|Selector8~2_combout\);

-- Location: LCCOMB_X33_Y18_N14
\inst|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~3_combout\ = (\inst|state.MODE_SET~regout\) # ((\inst|Selector8~2_combout\) # ((!\inst|LCD_RS~0_combout\ & \inst|DATA_BUS_VALUE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.MODE_SET~regout\,
	datab => \inst|Selector8~2_combout\,
	datac => \inst|LCD_RS~0_combout\,
	datad => \inst|DATA_BUS_VALUE\(1),
	combout => \inst|Selector8~3_combout\);

-- Location: LCCOMB_X33_Y18_N12
\inst|Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~4_combout\ = (((\inst|Selector8~3_combout\) # (!\inst|Selector8~1_combout\)) # (!\inst|Selector9~1_combout\)) # (!\inst|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|Selector9~1_combout\,
	datac => \inst|Selector8~3_combout\,
	datad => \inst|Selector8~1_combout\,
	combout => \inst|Selector8~4_combout\);

-- Location: LCFF_X33_Y18_N13
\inst|DATA_BUS_VALUE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector8~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X34_Y18_N28
\inst|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector9~4_combout\ = (\inst|Selector9~3_combout\) # ((\inst|state.WRITE_CL6~regout\) # ((\inst|state.WRITE_CL9~regout\) # (!\inst|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector9~3_combout\,
	datab => \inst|state.WRITE_CL6~regout\,
	datac => \inst|Selector9~2_combout\,
	datad => \inst|state.WRITE_CL9~regout\,
	combout => \inst|Selector9~4_combout\);

-- Location: LCFF_X34_Y18_N29
\inst|DATA_BUS_VALUE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|Selector9~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X32_Y18_N20
\inst|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LCD_E~0_combout\ = (\inst|state.HOLD~regout\ & (\inst|LCD_E~regout\)) # (!\inst|state.HOLD~regout\ & ((\inst|state.TOGGLE_E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.HOLD~regout\,
	datac => \inst|LCD_E~regout\,
	datad => \inst|state.TOGGLE_E~regout\,
	combout => \inst|LCD_E~0_combout\);

-- Location: LCFF_X32_Y18_N21
\inst|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst|LCD_E~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LCD_E~regout\);

-- Location: LCCOMB_X57_Y16_N20
\inst2|label_secret_code_register_port_map|t~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|label_secret_code_register_port_map|t~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|label_secret_code_register_port_map|t~feeder_combout\);

-- Location: LCFF_X57_Y16_N21
\inst2|label_secret_code_register_port_map|t\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst2|label_secret_code_register_port_map|t~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \ALT_INV_save~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|label_secret_code_register_port_map|t~regout\);

-- Location: LCCOMB_X46_Y16_N22
\inst4|label_debounce_port_map|button_out[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_debounce_port_map|button_out[3]~40_combout\ = ((\inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\ & ((!\inst4|label_debounce_port_map|Equal6~0_combout\) # (!\inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\)))) # 
-- (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_polling_rotator_port_map|Fsm_State.ONE~regout\,
	datab => \inst4|label_debounce_port_map|Equal6~0_combout\,
	datac => \reset~combout\,
	datad => \inst4|label_polling_rotator_port_map|Fsm_State.FOUR~regout\,
	combout => \inst4|label_debounce_port_map|button_out[3]~40_combout\);

-- Location: LCCOMB_X47_Y16_N24
\inst7|label_shift_control_port_map|num~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_control_port_map|num~3_combout\ = (\inst4|label_debounce_port_map|column_new~regout\ & (\inst7|label_shift_control_port_map|Equal0~6_combout\ & ((\inst4|label_debounce_port_map|button_out[3]~40_combout\) # 
-- (\inst7|label_shift_control_port_map|num~2_combout\)))) # (!\inst4|label_debounce_port_map|column_new~regout\ & ((\inst4|label_debounce_port_map|button_out[3]~40_combout\) # ((\inst7|label_shift_control_port_map|num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|label_debounce_port_map|column_new~regout\,
	datab => \inst4|label_debounce_port_map|button_out[3]~40_combout\,
	datac => \inst7|label_shift_control_port_map|num~2_combout\,
	datad => \inst7|label_shift_control_port_map|Equal0~6_combout\,
	combout => \inst7|label_shift_control_port_map|num~3_combout\);

-- Location: LCFF_X47_Y16_N25
\inst7|label_shift_control_port_map|num[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_control_port_map|num~3_combout\,
	aclr => \inst2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_control_port_map|num\(3));

-- Location: LCFF_X47_Y16_N13
\inst7|label_shift_register_port_map|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_control_port_map|num\(3),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(3));

-- Location: LCFF_X49_Y16_N1
\inst7|label_shift_register_port_map|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(3),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(7));

-- Location: LCFF_X49_Y16_N13
\inst7|label_shift_register_port_map|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(7),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(11));

-- Location: LCFF_X48_Y16_N19
\inst7|label_shift_register_port_map|tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(11),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(15));

-- Location: LCCOMB_X48_Y16_N10
\inst7|label_shift_register_port_map|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|label_shift_register_port_map|tmp[6]~feeder_combout\ = \inst7|label_shift_register_port_map|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst7|label_shift_register_port_map|tmp[6]~feeder_combout\);

-- Location: LCFF_X48_Y16_N11
\inst7|label_shift_register_port_map|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst7|label_shift_register_port_map|tmp[6]~feeder_combout\,
	aclr => \inst2|comb~0_combout\,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(6));

-- Location: LCFF_X49_Y16_N17
\inst7|label_shift_register_port_map|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(6),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(10));

-- Location: LCFF_X48_Y16_N9
\inst7|label_shift_register_port_map|tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(10),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(14));

-- Location: LCFF_X49_Y16_N27
\inst7|label_shift_register_port_map|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(1),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(5));

-- Location: LCFF_X49_Y16_N25
\inst7|label_shift_register_port_map|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(5),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(9));

-- Location: LCFF_X48_Y16_N23
\inst7|label_shift_register_port_map|tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(9),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(13));

-- Location: LCFF_X49_Y16_N5
\inst7|label_shift_register_port_map|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(4),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(8));

-- Location: LCFF_X48_Y16_N13
\inst7|label_shift_register_port_map|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst7|label_shift_register_port_map|tmp\(8),
	aclr => \inst2|comb~0_combout\,
	sload => VCC,
	ena => \inst7|label_shift_control_port_map|en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|label_shift_register_port_map|tmp\(12));

-- Location: LCCOMB_X50_Y16_N6
\inst6|label_rotator_port_map|Fsm_State.ONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_rotator_port_map|Fsm_State.ONE~0_combout\ = !\inst6|label_rotator_port_map|Fsm_State.FOUR~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\,
	combout => \inst6|label_rotator_port_map|Fsm_State.ONE~0_combout\);

-- Location: LCFF_X50_Y16_N7
\inst6|label_rotator_port_map|Fsm_State.ONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst6|label_rotator_port_map|Fsm_State.ONE~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|label_rotator_port_map|Fsm_State.ONE~regout\);

-- Location: LCCOMB_X50_Y16_N18
\inst6|label_rotator_port_map|Fsm_State.TWO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_rotator_port_map|Fsm_State.TWO~0_combout\ = !\inst6|label_rotator_port_map|Fsm_State.ONE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|label_rotator_port_map|Fsm_State.ONE~regout\,
	combout => \inst6|label_rotator_port_map|Fsm_State.TWO~0_combout\);

-- Location: LCFF_X50_Y16_N19
\inst6|label_rotator_port_map|Fsm_State.TWO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst6|label_rotator_port_map|Fsm_State.TWO~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|label_rotator_port_map|Fsm_State.TWO~regout\);

-- Location: LCCOMB_X50_Y16_N24
\inst6|label_rotator_port_map|Fsm_State.THREE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_rotator_port_map|Fsm_State.THREE~feeder_combout\ = \inst6|label_rotator_port_map|Fsm_State.TWO~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|label_rotator_port_map|Fsm_State.TWO~regout\,
	combout => \inst6|label_rotator_port_map|Fsm_State.THREE~feeder_combout\);

-- Location: LCFF_X50_Y16_N25
\inst6|label_rotator_port_map|Fsm_State.THREE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	datain => \inst6|label_rotator_port_map|Fsm_State.THREE~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|label_rotator_port_map|Fsm_State.THREE~regout\);

-- Location: LCFF_X50_Y16_N15
\inst6|label_rotator_port_map|Fsm_State.FOUR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst6|label_rotator_port_map|Fsm_State.THREE~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\);

-- Location: LCFF_X50_Y16_N31
\inst6|label_rotator_port_map|rot[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|f~clkctrl_outclk\,
	sdata => \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|label_rotator_port_map|rot\(3));

-- Location: LCCOMB_X50_Y16_N30
\inst6|label_mux_4to1_port_map|hex_out[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ = (!\inst6|label_rotator_port_map|Fsm_State.THREE~regout\ & (!\inst6|label_rotator_port_map|Fsm_State.TWO~regout\ & (\inst6|label_rotator_port_map|Fsm_State.FOUR~regout\ $ 
-- (\inst6|label_rotator_port_map|rot\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_rotator_port_map|Fsm_State.THREE~regout\,
	datab => \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\,
	datac => \inst6|label_rotator_port_map|rot\(3),
	datad => \inst6|label_rotator_port_map|Fsm_State.TWO~regout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\);

-- Location: LCCOMB_X49_Y16_N16
\inst6|label_hex_display_2_port_map|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux0~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(8) & ((\inst7|label_shift_register_port_map|tmp\(9) & (!\inst7|label_shift_register_port_map|tmp\(10) & \inst7|label_shift_register_port_map|tmp\(11))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(9) & (\inst7|label_shift_register_port_map|tmp\(10) $ (!\inst7|label_shift_register_port_map|tmp\(11)))))) # (!\inst7|label_shift_register_port_map|tmp\(8) & (\inst7|label_shift_register_port_map|tmp\(10) & 
-- (\inst7|label_shift_register_port_map|tmp\(9) $ (!\inst7|label_shift_register_port_map|tmp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(10),
	datad => \inst7|label_shift_register_port_map|tmp\(11),
	combout => \inst6|label_hex_display_2_port_map|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y16_N18
\inst6|label_hex_display_3_port_map|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux0~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(12) & ((\inst7|label_shift_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(15) & !\inst7|label_shift_register_port_map|tmp\(13))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(15) $ (!\inst7|label_shift_register_port_map|tmp\(13)))))) # (!\inst7|label_shift_register_port_map|tmp\(12) & (\inst7|label_shift_register_port_map|tmp\(14) & 
-- (\inst7|label_shift_register_port_map|tmp\(15) $ (!\inst7|label_shift_register_port_map|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst7|label_shift_register_port_map|tmp\(14),
	datac => \inst7|label_shift_register_port_map|tmp\(15),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst6|label_hex_display_3_port_map|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y16_N8
\inst6|label_mux_4to1_port_map|hex_out[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[7]~2_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\) # ((!\inst6|label_hex_display_2_port_map|Mux0~0_combout\)))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((!\inst6|label_hex_display_3_port_map|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datac => \inst6|label_hex_display_2_port_map|Mux0~0_combout\,
	datad => \inst6|label_hex_display_3_port_map|Mux0~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[7]~2_combout\);

-- Location: LCCOMB_X49_Y16_N6
\inst6|label_hex_display_0_port_map|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux0~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(3) & ((\inst7|label_shift_register_port_map|tmp\(0) & (\inst7|label_shift_register_port_map|tmp\(1) $ (\inst7|label_shift_register_port_map|tmp\(2)))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(0) & (\inst7|label_shift_register_port_map|tmp\(1) & \inst7|label_shift_register_port_map|tmp\(2))))) # (!\inst7|label_shift_register_port_map|tmp\(3) & (!\inst7|label_shift_register_port_map|tmp\(1) & 
-- (\inst7|label_shift_register_port_map|tmp\(0) $ (\inst7|label_shift_register_port_map|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(0),
	datac => \inst7|label_shift_register_port_map|tmp\(1),
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst6|label_hex_display_0_port_map|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y16_N4
\inst6|label_hex_display_1_port_map|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux0~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(6) & ((\inst7|label_shift_register_port_map|tmp\(7) & (\inst7|label_shift_register_port_map|tmp\(5) $ (\inst7|label_shift_register_port_map|tmp\(4)))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(7) & (!\inst7|label_shift_register_port_map|tmp\(5) & !\inst7|label_shift_register_port_map|tmp\(4))))) # (!\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(4) & 
-- (\inst7|label_shift_register_port_map|tmp\(7) $ (!\inst7|label_shift_register_port_map|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(6),
	datab => \inst7|label_shift_register_port_map|tmp\(7),
	datac => \inst7|label_shift_register_port_map|tmp\(5),
	datad => \inst7|label_shift_register_port_map|tmp\(4),
	combout => \inst6|label_hex_display_1_port_map|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y16_N8
\inst6|label_mux_4to1_port_map|hex_out[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[7]~3_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~2_combout\ & (((!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\)) # (!\inst6|label_hex_display_0_port_map|Mux0~0_combout\))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[7]~2_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & !\inst6|label_hex_display_1_port_map|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~2_combout\,
	datab => \inst6|label_hex_display_0_port_map|Mux0~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_hex_display_1_port_map|Mux0~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[7]~3_combout\);

-- Location: LCCOMB_X50_Y16_N14
\inst6|label_mux_4to1_port_map|hex_out[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ = (!\inst6|label_rotator_port_map|Fsm_State.TWO~regout\ & (!\inst6|label_rotator_port_map|Fsm_State.FOUR~regout\ & (\inst6|label_rotator_port_map|Fsm_State.THREE~regout\ $ 
-- (\inst6|label_rotator_port_map|rot\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_rotator_port_map|Fsm_State.THREE~regout\,
	datab => \inst6|label_rotator_port_map|Fsm_State.TWO~regout\,
	datac => \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\,
	datad => \inst6|label_rotator_port_map|rot\(3),
	combout => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\);

-- Location: LCCOMB_X47_Y16_N28
\inst6|label_hex_display_0_port_map|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux1~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(2) & (\inst7|label_shift_register_port_map|tmp\(0) $ (((\inst7|label_shift_register_port_map|tmp\(3)) # (\inst7|label_shift_register_port_map|tmp\(1)))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(2) & (\inst7|label_shift_register_port_map|tmp\(3) & (\inst7|label_shift_register_port_map|tmp\(0) & \inst7|label_shift_register_port_map|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(0),
	datac => \inst7|label_shift_register_port_map|tmp\(2),
	datad => \inst7|label_shift_register_port_map|tmp\(1),
	combout => \inst6|label_hex_display_0_port_map|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y16_N20
\inst6|label_hex_display_3_port_map|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux1~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(12) $ (((\inst7|label_shift_register_port_map|tmp\(15)) # (\inst7|label_shift_register_port_map|tmp\(13)))))) 
-- # (!\inst7|label_shift_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(12) & (\inst7|label_shift_register_port_map|tmp\(15) & \inst7|label_shift_register_port_map|tmp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst7|label_shift_register_port_map|tmp\(15),
	datac => \inst7|label_shift_register_port_map|tmp\(14),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst6|label_hex_display_3_port_map|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y16_N24
\inst6|label_hex_display_1_port_map|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux1~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(4) $ (((\inst7|label_shift_register_port_map|tmp\(7)) # (\inst7|label_shift_register_port_map|tmp\(5)))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(7) & (\inst7|label_shift_register_port_map|tmp\(5) & \inst7|label_shift_register_port_map|tmp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(6),
	datab => \inst7|label_shift_register_port_map|tmp\(7),
	datac => \inst7|label_shift_register_port_map|tmp\(5),
	datad => \inst7|label_shift_register_port_map|tmp\(4),
	combout => \inst6|label_hex_display_1_port_map|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y16_N20
\inst6|label_mux_4to1_port_map|hex_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\)))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & 
-- ((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((!\inst6|label_hex_display_1_port_map|Mux1~0_combout\))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (!\inst6|label_hex_display_3_port_map|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_hex_display_3_port_map|Mux1~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_hex_display_1_port_map|Mux1~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\);

-- Location: LCCOMB_X51_Y16_N22
\inst6|label_hex_display_2_port_map|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux1~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(10) & (\inst7|label_shift_register_port_map|tmp\(8) $ (((\inst7|label_shift_register_port_map|tmp\(9)) # (\inst7|label_shift_register_port_map|tmp\(11)))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(10) & (\inst7|label_shift_register_port_map|tmp\(8) & (\inst7|label_shift_register_port_map|tmp\(9) & \inst7|label_shift_register_port_map|tmp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(11),
	datad => \inst7|label_shift_register_port_map|tmp\(10),
	combout => \inst6|label_hex_display_2_port_map|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y16_N2
\inst6|label_mux_4to1_port_map|hex_out[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[6]~5_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\ & (!\inst6|label_hex_display_0_port_map|Mux1~0_combout\)) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\ & ((!\inst6|label_hex_display_2_port_map|Mux1~0_combout\))))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_hex_display_0_port_map|Mux1~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[6]~4_combout\,
	datad => \inst6|label_hex_display_2_port_map|Mux1~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[6]~5_combout\);

-- Location: LCCOMB_X48_Y16_N6
\inst6|label_hex_display_3_port_map|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux2~0_combout\ = (!\inst7|label_shift_register_port_map|tmp\(12) & ((\inst7|label_shift_register_port_map|tmp\(15) & (\inst7|label_shift_register_port_map|tmp\(14))) # (!\inst7|label_shift_register_port_map|tmp\(15) & 
-- (!\inst7|label_shift_register_port_map|tmp\(14) & \inst7|label_shift_register_port_map|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst7|label_shift_register_port_map|tmp\(15),
	datac => \inst7|label_shift_register_port_map|tmp\(14),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst6|label_hex_display_3_port_map|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y16_N30
\inst6|label_hex_display_2_port_map|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux2~0_combout\ = (!\inst7|label_shift_register_port_map|tmp\(8) & ((\inst7|label_shift_register_port_map|tmp\(11) & ((\inst7|label_shift_register_port_map|tmp\(10)))) # (!\inst7|label_shift_register_port_map|tmp\(11) & 
-- (\inst7|label_shift_register_port_map|tmp\(9) & !\inst7|label_shift_register_port_map|tmp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(11),
	datad => \inst7|label_shift_register_port_map|tmp\(10),
	combout => \inst6|label_hex_display_2_port_map|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y16_N28
\inst6|label_mux_4to1_port_map|hex_out[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\) # (!\inst6|label_hex_display_2_port_map|Mux2~0_combout\)))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (!\inst6|label_hex_display_3_port_map|Mux2~0_combout\ & (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_hex_display_3_port_map|Mux2~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_hex_display_2_port_map|Mux2~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\);

-- Location: LCCOMB_X51_Y16_N0
\inst6|label_hex_display_1_port_map|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux2~0_combout\ = (!\inst7|label_shift_register_port_map|tmp\(4) & ((\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(7))) # (!\inst7|label_shift_register_port_map|tmp\(6) & 
-- (!\inst7|label_shift_register_port_map|tmp\(7) & \inst7|label_shift_register_port_map|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(6),
	datab => \inst7|label_shift_register_port_map|tmp\(7),
	datac => \inst7|label_shift_register_port_map|tmp\(5),
	datad => \inst7|label_shift_register_port_map|tmp\(4),
	combout => \inst6|label_hex_display_1_port_map|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y16_N14
\inst6|label_hex_display_0_port_map|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux2~0_combout\ = (!\inst7|label_shift_register_port_map|tmp\(0) & ((\inst7|label_shift_register_port_map|tmp\(3) & ((\inst7|label_shift_register_port_map|tmp\(2)))) # (!\inst7|label_shift_register_port_map|tmp\(3) & 
-- (\inst7|label_shift_register_port_map|tmp\(1) & !\inst7|label_shift_register_port_map|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(0),
	datac => \inst7|label_shift_register_port_map|tmp\(1),
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst6|label_hex_display_0_port_map|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y16_N22
\inst6|label_mux_4to1_port_map|hex_out[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[5]~7_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\ & ((!\inst6|label_hex_display_0_port_map|Mux2~0_combout\))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\ & (!\inst6|label_hex_display_1_port_map|Mux2~0_combout\)))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (\inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datab => \inst6|label_mux_4to1_port_map|hex_out[5]~6_combout\,
	datac => \inst6|label_hex_display_1_port_map|Mux2~0_combout\,
	datad => \inst6|label_hex_display_0_port_map|Mux2~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[5]~7_combout\);

-- Location: LCCOMB_X47_Y16_N2
\inst6|label_hex_display_0_port_map|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux3~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(3) & (((!\inst7|label_shift_register_port_map|tmp\(0) & \inst7|label_shift_register_port_map|tmp\(1))))) # (!\inst7|label_shift_register_port_map|tmp\(3) & 
-- ((\inst7|label_shift_register_port_map|tmp\(2) & (\inst7|label_shift_register_port_map|tmp\(0) $ (!\inst7|label_shift_register_port_map|tmp\(1)))) # (!\inst7|label_shift_register_port_map|tmp\(2) & (\inst7|label_shift_register_port_map|tmp\(0) & 
-- !\inst7|label_shift_register_port_map|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(2),
	datac => \inst7|label_shift_register_port_map|tmp\(0),
	datad => \inst7|label_shift_register_port_map|tmp\(1),
	combout => \inst6|label_hex_display_0_port_map|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y16_N12
\inst6|label_hex_display_2_port_map|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux3~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(8) & (!\inst7|label_shift_register_port_map|tmp\(11) & (\inst7|label_shift_register_port_map|tmp\(9) $ (!\inst7|label_shift_register_port_map|tmp\(10))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(8) & ((\inst7|label_shift_register_port_map|tmp\(9) & (\inst7|label_shift_register_port_map|tmp\(11))) # (!\inst7|label_shift_register_port_map|tmp\(9) & (!\inst7|label_shift_register_port_map|tmp\(11) & 
-- \inst7|label_shift_register_port_map|tmp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(11),
	datad => \inst7|label_shift_register_port_map|tmp\(10),
	combout => \inst6|label_hex_display_2_port_map|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y16_N16
\inst6|label_hex_display_3_port_map|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux3~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(12) & (!\inst7|label_shift_register_port_map|tmp\(15) & (\inst7|label_shift_register_port_map|tmp\(14) $ (!\inst7|label_shift_register_port_map|tmp\(13))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(12) & ((\inst7|label_shift_register_port_map|tmp\(15) & ((\inst7|label_shift_register_port_map|tmp\(13)))) # (!\inst7|label_shift_register_port_map|tmp\(15) & (\inst7|label_shift_register_port_map|tmp\(14) & 
-- !\inst7|label_shift_register_port_map|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst7|label_shift_register_port_map|tmp\(15),
	datac => \inst7|label_shift_register_port_map|tmp\(14),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst6|label_hex_display_3_port_map|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y16_N4
\inst6|label_hex_display_1_port_map|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux3~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(7) & (\inst7|label_shift_register_port_map|tmp\(5) & (!\inst7|label_shift_register_port_map|tmp\(4)))) # (!\inst7|label_shift_register_port_map|tmp\(7) & 
-- ((\inst7|label_shift_register_port_map|tmp\(5) & (\inst7|label_shift_register_port_map|tmp\(4) & \inst7|label_shift_register_port_map|tmp\(6))) # (!\inst7|label_shift_register_port_map|tmp\(5) & (\inst7|label_shift_register_port_map|tmp\(4) $ 
-- (\inst7|label_shift_register_port_map|tmp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(7),
	datab => \inst7|label_shift_register_port_map|tmp\(5),
	datac => \inst7|label_shift_register_port_map|tmp\(4),
	datad => \inst7|label_shift_register_port_map|tmp\(6),
	combout => \inst6|label_hex_display_1_port_map|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y16_N28
\inst6|label_mux_4to1_port_map|hex_out[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\)))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & 
-- ((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((!\inst6|label_hex_display_1_port_map|Mux3~0_combout\))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (!\inst6|label_hex_display_3_port_map|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_hex_display_3_port_map|Mux3~0_combout\,
	datac => \inst6|label_hex_display_1_port_map|Mux3~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\);

-- Location: LCCOMB_X50_Y16_N12
\inst6|label_mux_4to1_port_map|hex_out[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[4]~9_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\ & (!\inst6|label_hex_display_0_port_map|Mux3~0_combout\)) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\ & ((!\inst6|label_hex_display_2_port_map|Mux3~0_combout\))))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_hex_display_0_port_map|Mux3~0_combout\,
	datac => \inst6|label_hex_display_2_port_map|Mux3~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[4]~8_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[4]~9_combout\);

-- Location: LCCOMB_X51_Y16_N26
\inst6|label_hex_display_1_port_map|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux4~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(7) $ (((\inst7|label_shift_register_port_map|tmp\(4)) # (!\inst7|label_shift_register_port_map|tmp\(5)))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(6) & (\inst7|label_shift_register_port_map|tmp\(4) & ((!\inst7|label_shift_register_port_map|tmp\(5)) # (!\inst7|label_shift_register_port_map|tmp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(6),
	datab => \inst7|label_shift_register_port_map|tmp\(7),
	datac => \inst7|label_shift_register_port_map|tmp\(5),
	datad => \inst7|label_shift_register_port_map|tmp\(4),
	combout => \inst6|label_hex_display_1_port_map|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y16_N26
\inst6|label_hex_display_0_port_map|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux4~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(0) & (((!\inst7|label_shift_register_port_map|tmp\(1) & !\inst7|label_shift_register_port_map|tmp\(2))) # (!\inst7|label_shift_register_port_map|tmp\(3)))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(0) & (\inst7|label_shift_register_port_map|tmp\(2) & (\inst7|label_shift_register_port_map|tmp\(3) $ (!\inst7|label_shift_register_port_map|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(0),
	datac => \inst7|label_shift_register_port_map|tmp\(1),
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst6|label_hex_display_0_port_map|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y16_N14
\inst6|label_hex_display_3_port_map|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux4~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(12) & (((!\inst7|label_shift_register_port_map|tmp\(14) & !\inst7|label_shift_register_port_map|tmp\(13))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(15)))) # (!\inst7|label_shift_register_port_map|tmp\(12) & (\inst7|label_shift_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(15) $ (!\inst7|label_shift_register_port_map|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst7|label_shift_register_port_map|tmp\(15),
	datac => \inst7|label_shift_register_port_map|tmp\(14),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst6|label_hex_display_3_port_map|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y16_N10
\inst6|label_hex_display_2_port_map|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux4~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(8) & (((!\inst7|label_shift_register_port_map|tmp\(9) & !\inst7|label_shift_register_port_map|tmp\(10))) # (!\inst7|label_shift_register_port_map|tmp\(11)))) 
-- # (!\inst7|label_shift_register_port_map|tmp\(8) & (\inst7|label_shift_register_port_map|tmp\(10) & (\inst7|label_shift_register_port_map|tmp\(9) $ (!\inst7|label_shift_register_port_map|tmp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(10),
	datad => \inst7|label_shift_register_port_map|tmp\(11),
	combout => \inst6|label_hex_display_2_port_map|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y16_N2
\inst6|label_mux_4to1_port_map|hex_out[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\) # ((!\inst6|label_hex_display_2_port_map|Mux4~0_combout\)))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (!\inst6|label_hex_display_3_port_map|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datac => \inst6|label_hex_display_3_port_map|Mux4~0_combout\,
	datad => \inst6|label_hex_display_2_port_map|Mux4~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\);

-- Location: LCCOMB_X50_Y16_N0
\inst6|label_mux_4to1_port_map|hex_out[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[3]~11_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\ & ((!\inst6|label_hex_display_0_port_map|Mux4~0_combout\))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\ & (!\inst6|label_hex_display_1_port_map|Mux4~0_combout\)))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_hex_display_1_port_map|Mux4~0_combout\,
	datab => \inst6|label_hex_display_0_port_map|Mux4~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[3]~10_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[3]~11_combout\);

-- Location: LCCOMB_X49_Y16_N12
\inst6|label_hex_display_1_port_map|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux5~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(5) & (\inst7|label_shift_register_port_map|tmp\(7) $ (((\inst7|label_shift_register_port_map|tmp\(4)) # (!\inst7|label_shift_register_port_map|tmp\(6)))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(5) & (\inst7|label_shift_register_port_map|tmp\(4) & (\inst7|label_shift_register_port_map|tmp\(7) $ (!\inst7|label_shift_register_port_map|tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(5),
	datab => \inst7|label_shift_register_port_map|tmp\(4),
	datac => \inst7|label_shift_register_port_map|tmp\(7),
	datad => \inst7|label_shift_register_port_map|tmp\(6),
	combout => \inst6|label_hex_display_1_port_map|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y16_N4
\inst6|label_hex_display_3_port_map|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux5~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(12) & (\inst7|label_shift_register_port_map|tmp\(15) $ (((\inst7|label_shift_register_port_map|tmp\(13)) # 
-- (!\inst7|label_shift_register_port_map|tmp\(14)))))) # (!\inst7|label_shift_register_port_map|tmp\(12) & (\inst7|label_shift_register_port_map|tmp\(13) & (\inst7|label_shift_register_port_map|tmp\(15) $ (!\inst7|label_shift_register_port_map|tmp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(12),
	datab => \inst7|label_shift_register_port_map|tmp\(15),
	datac => \inst7|label_shift_register_port_map|tmp\(14),
	datad => \inst7|label_shift_register_port_map|tmp\(13),
	combout => \inst6|label_hex_display_3_port_map|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y16_N18
\inst6|label_mux_4to1_port_map|hex_out[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\)))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & 
-- ((\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (!\inst6|label_hex_display_1_port_map|Mux5~0_combout\)) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((!\inst6|label_hex_display_3_port_map|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_hex_display_1_port_map|Mux5~0_combout\,
	datac => \inst6|label_hex_display_3_port_map|Mux5~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\);

-- Location: LCCOMB_X49_Y16_N20
\inst6|label_hex_display_0_port_map|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux5~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(0) & (\inst7|label_shift_register_port_map|tmp\(3) $ (((\inst7|label_shift_register_port_map|tmp\(1)) # (!\inst7|label_shift_register_port_map|tmp\(2)))))) # 
-- (!\inst7|label_shift_register_port_map|tmp\(0) & (\inst7|label_shift_register_port_map|tmp\(1) & (\inst7|label_shift_register_port_map|tmp\(3) $ (!\inst7|label_shift_register_port_map|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(0),
	datac => \inst7|label_shift_register_port_map|tmp\(1),
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst6|label_hex_display_0_port_map|Mux5~0_combout\);

-- Location: LCCOMB_X51_Y16_N20
\inst6|label_hex_display_2_port_map|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux5~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(8) & (\inst7|label_shift_register_port_map|tmp\(11) $ (((\inst7|label_shift_register_port_map|tmp\(9)) # (!\inst7|label_shift_register_port_map|tmp\(10)))))) 
-- # (!\inst7|label_shift_register_port_map|tmp\(8) & (\inst7|label_shift_register_port_map|tmp\(9) & (\inst7|label_shift_register_port_map|tmp\(11) $ (!\inst7|label_shift_register_port_map|tmp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(11),
	datad => \inst7|label_shift_register_port_map|tmp\(10),
	combout => \inst6|label_hex_display_2_port_map|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y16_N10
\inst6|label_mux_4to1_port_map|hex_out[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[2]~13_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\ & (!\inst6|label_hex_display_0_port_map|Mux5~0_combout\)) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\ & ((!\inst6|label_hex_display_2_port_map|Mux5~0_combout\))))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (\inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_mux_4to1_port_map|hex_out[2]~12_combout\,
	datac => \inst6|label_hex_display_0_port_map|Mux5~0_combout\,
	datad => \inst6|label_hex_display_2_port_map|Mux5~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[2]~13_combout\);

-- Location: LCCOMB_X49_Y16_N30
\inst6|label_hex_display_0_port_map|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux6~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(3) & (((\inst7|label_shift_register_port_map|tmp\(0)) # (!\inst7|label_shift_register_port_map|tmp\(2))))) # (!\inst7|label_shift_register_port_map|tmp\(3) & 
-- ((\inst7|label_shift_register_port_map|tmp\(1) & ((!\inst7|label_shift_register_port_map|tmp\(2)) # (!\inst7|label_shift_register_port_map|tmp\(0)))) # (!\inst7|label_shift_register_port_map|tmp\(1) & ((\inst7|label_shift_register_port_map|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(3),
	datab => \inst7|label_shift_register_port_map|tmp\(1),
	datac => \inst7|label_shift_register_port_map|tmp\(0),
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst6|label_hex_display_0_port_map|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y16_N24
\inst6|label_hex_display_1_port_map|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_1_port_map|Mux6~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(7) & ((\inst7|label_shift_register_port_map|tmp\(4)) # ((!\inst7|label_shift_register_port_map|tmp\(6))))) # (!\inst7|label_shift_register_port_map|tmp\(7) & 
-- ((\inst7|label_shift_register_port_map|tmp\(5) & ((!\inst7|label_shift_register_port_map|tmp\(6)) # (!\inst7|label_shift_register_port_map|tmp\(4)))) # (!\inst7|label_shift_register_port_map|tmp\(5) & ((\inst7|label_shift_register_port_map|tmp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(7),
	datab => \inst7|label_shift_register_port_map|tmp\(4),
	datac => \inst7|label_shift_register_port_map|tmp\(5),
	datad => \inst7|label_shift_register_port_map|tmp\(6),
	combout => \inst6|label_hex_display_1_port_map|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y16_N18
\inst6|label_hex_display_2_port_map|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux6~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(11) & ((\inst7|label_shift_register_port_map|tmp\(8)) # ((!\inst7|label_shift_register_port_map|tmp\(10))))) # (!\inst7|label_shift_register_port_map|tmp\(11) 
-- & ((\inst7|label_shift_register_port_map|tmp\(9) & ((!\inst7|label_shift_register_port_map|tmp\(10)) # (!\inst7|label_shift_register_port_map|tmp\(8)))) # (!\inst7|label_shift_register_port_map|tmp\(9) & 
-- ((\inst7|label_shift_register_port_map|tmp\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(8),
	datab => \inst7|label_shift_register_port_map|tmp\(9),
	datac => \inst7|label_shift_register_port_map|tmp\(11),
	datad => \inst7|label_shift_register_port_map|tmp\(10),
	combout => \inst6|label_hex_display_2_port_map|Mux6~0_combout\);

-- Location: LCCOMB_X50_Y16_N2
\inst6|label_mux_4to1_port_map|hex_out[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\)))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & 
-- ((\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_hex_display_2_port_map|Mux6~0_combout\))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (\inst6|label_hex_display_3_port_map|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_hex_display_3_port_map|Mux6~0_combout\,
	datab => \inst6|label_hex_display_2_port_map|Mux6~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\);

-- Location: LCCOMB_X50_Y16_N4
\inst6|label_mux_4to1_port_map|hex_out[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[1]~15_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\ & (\inst6|label_hex_display_0_port_map|Mux6~0_combout\)) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\ & ((\inst6|label_hex_display_1_port_map|Mux6~0_combout\))))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (((\inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_hex_display_0_port_map|Mux6~0_combout\,
	datab => \inst6|label_hex_display_1_port_map|Mux6~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[1]~14_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[1]~15_combout\);

-- Location: LCCOMB_X48_Y16_N22
\inst6|label_hex_display_3_port_map|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_3_port_map|Mux7~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(14) & (\inst7|label_shift_register_port_map|tmp\(13) & \inst7|label_shift_register_port_map|tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|label_shift_register_port_map|tmp\(14),
	datac => \inst7|label_shift_register_port_map|tmp\(13),
	datad => \inst7|label_shift_register_port_map|tmp\(15),
	combout => \inst6|label_hex_display_3_port_map|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y16_N26
\inst6|label_mux_4to1_port_map|hex_out[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & ((\inst6|label_hex_display_1_port_map|Mux7~0_combout\) # ((\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\)))) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\ & (((\inst6|label_hex_display_3_port_map|Mux7~0_combout\ & !\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_hex_display_1_port_map|Mux7~0_combout\,
	datab => \inst6|label_hex_display_3_port_map|Mux7~0_combout\,
	datac => \inst6|label_mux_4to1_port_map|hex_out[7]~0_combout\,
	datad => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\);

-- Location: LCCOMB_X49_Y16_N0
\inst6|label_hex_display_0_port_map|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_0_port_map|Mux7~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(1) & (\inst7|label_shift_register_port_map|tmp\(3) & \inst7|label_shift_register_port_map|tmp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(1),
	datac => \inst7|label_shift_register_port_map|tmp\(3),
	datad => \inst7|label_shift_register_port_map|tmp\(2),
	combout => \inst6|label_hex_display_0_port_map|Mux7~0_combout\);

-- Location: LCCOMB_X51_Y16_N28
\inst6|label_hex_display_2_port_map|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_hex_display_2_port_map|Mux7~0_combout\ = (\inst7|label_shift_register_port_map|tmp\(9) & (\inst7|label_shift_register_port_map|tmp\(11) & \inst7|label_shift_register_port_map|tmp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|label_shift_register_port_map|tmp\(9),
	datab => \inst7|label_shift_register_port_map|tmp\(11),
	datad => \inst7|label_shift_register_port_map|tmp\(10),
	combout => \inst6|label_hex_display_2_port_map|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y16_N16
\inst6|label_mux_4to1_port_map|hex_out[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|label_mux_4to1_port_map|hex_out[0]~17_combout\ = (\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & ((\inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\ & (\inst6|label_hex_display_0_port_map|Mux7~0_combout\)) # 
-- (!\inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\ & ((\inst6|label_hex_display_2_port_map|Mux7~0_combout\))))) # (!\inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\ & (\inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|label_mux_4to1_port_map|hex_out[7]~1_combout\,
	datab => \inst6|label_mux_4to1_port_map|hex_out[0]~16_combout\,
	datac => \inst6|label_hex_display_0_port_map|Mux7~0_combout\,
	datad => \inst6|label_hex_display_2_port_map|Mux7~0_combout\,
	combout => \inst6|label_mux_4to1_port_map|hex_out[0]~17_combout\);

-- Location: LCCOMB_X45_Y16_N8
\inst4|label_polling_rotator_port_map|sel[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|label_polling_rotator_port_map|sel[1]~2_combout\ = (\inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|label_polling_rotator_port_map|Fsm_State.THREE~regout\,
	datad => \reset~combout\,
	combout => \inst4|label_polling_rotator_port_map|sel[1]~2_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|LCD_RS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DATA_BUS_VALUE\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(7));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DATA_BUS_VALUE\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_DATA_BUS_VALUE\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(5));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_DATA_BUS_VALUE\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_DATA_BUS_VALUE\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(3));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DATA_BUS_VALUE\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DATA_BUS_VALUE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DATA_BUS_VALUE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA_BUS(0));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_LCD_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_E);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ON~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_LCD_ON);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BACK_LED~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_BACK_LED);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saved~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|label_secret_code_register_port_map|t~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saved);

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\equal~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|label_comparator_port_map|tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_equal);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(15));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(14));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(13));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(12));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(10));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|label_shift_register_port_map|tmp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(0));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(7));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(6));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(5));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(4));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(3));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(2));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(1));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_mux_4to1_port_map|hex_out[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_out(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mux_sel[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_rotator_port_map|rot\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mux_sel(3));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mux_sel[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_rotator_port_map|Fsm_State.FOUR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mux_sel(2));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mux_sel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_rotator_port_map|Fsm_State.THREE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mux_sel(1));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mux_sel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|label_rotator_port_map|Fsm_State.TWO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mux_sel(0));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|label_polling_rotator_port_map|sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|label_polling_rotator_port_map|ALT_INV_sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|label_polling_rotator_port_map|ALT_INV_sel[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|label_polling_rotator_port_map|ALT_INV_sel[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(0));
END structure;


