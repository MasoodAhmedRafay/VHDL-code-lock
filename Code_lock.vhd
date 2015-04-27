salibrary ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Code_lock is
	port
	(
		password			: in std_logic_vector(15 downto 0);		--switches input
		clock				: in std_logic;
		reset				: in std_logic;
		save				: in std_logic;								--save switches input
		column			: in std_logic_vector(3 downto 0);		--feedback by the numpad
		rst				: out std_logic;								--inverted reset press to demonstrate its press by a LED
		saved				: out std_logic;								--output to turn on a LED when code from switches is saved
		equal				: out std_logic;								--output to show using a LED if the codes are same(on) or not(off)
		row				: out std_logic_vector(3 downto 0);		--rotator outputo to the numpad
		code				: out std_logic_vector(15 downto 0);	--shift register output to 16 LEDs
		mux_sel			: out std_logic_vector(3 downto 0);		--Muxed LED 7-Seg display rotator
		debug_led_out	: out std_logic_vector(7 downto 0);		--data for every Muxed LED 7-Seg display
		LCD_RS			: out std_logic;								-----------------------
		LCD_E				: out std_logic;								--							--
		LCD_ON			: out std_logic;								--Signals for the LCD--
		BACK_LED			: out std_logic;								--							--
		LCD_RW 			: buffer std_logic;							--							--
		DATA_BUS			: inout std_logic_vector(7 downto 0)	-----------------------
	);

end entity;

architecture rtl of Code_lock is

component freq_divider

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		freq	: out std_logic
	);

end component;

component debounce_unit

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		colums		: in std_logic_vector(3 downto 0);
		press			: out std_logic;
		rows			: out std_logic_vector(3 downto 0);
		symbol		: out std_logic_vector(4 downto 0)
	);

end component;

component shift_unit

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		enable		: in std_logic;
		data_in		: in std_logic_vector(4 downto 0);
		digit_saved	: out std_logic;
		code_saved	: out std_logic;
		code_out		: out std_logic_vector(15 downto 0)
	);

end component;

component muxed_led_unit

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		shift_in		: in std_logic_vector(15 downto 0);
		disp_sel		: out std_logic_vector(3 downto 0);
		led_out		: out std_logic_vector(7 downto 0)
	);

end component;

component compare_unit

	port
	(
		key			: in std_logic_vector(15 downto 0);
		code			: in std_logic_vector(15 downto 0);
		clk			: in std_logic;
		reset			: in std_logic;
		refresh		: in std_logic;
		save_enable	: in std_logic;
		compare		: in std_logic;
		code_saved	: out std_logic;
		same			: out std_logic
	);

end component;

component ctrl_unit

	port
	(
		press			: in std_logic;
		cmp_same		: in std_logic;
		eval_press	: in std_logic;
		clk			: in std_logic;
		reset			: in std_logic;
		refresh		: out std_logic;
		lcd_cmd		: out std_logic_vector(2 downto 0)
	);

end component;

component LCD_unit

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		cmd			: in std_logic_vector(2 downto 0);
		LCD_RS		: out std_logic;
		LCD_E			: out std_logic;
		LCD_ON		: out std_logic;
		BACK_LED		: out std_logic;
		LCD_RW 		: buffer std_logic;
		DATA_BUS		: inout std_logic_vector(7 downto 0)
	);

end component;

signal f, en, comp, rfsh, equal_pass, d_saved		: std_logic;
signal pressed_button										: std_logic_vector(4 downto 0);
signal cmd_lcd													: std_logic_vector(2 downto 0);
signal shift_reg_out											: std_logic_vector(15 downto 0);

begin

label_freq_divider_port_map:
freq_divider port map
	(
		clk	=> clock,
		reset	=> reset,
		freq	=> f	--1Khz clock
	);

label_debounce_unit_port_map:
debounce_unit port map
	(
		clk		=> f,	--1Khz clock
		reset		=> reset,
		colums	=> column,
		press		=> en,	--connected to shift unit to inform for any new press
		rows		=> row,
		symbol	=> pressed_button	--decoded press data to shift unit
	);


label_shift_unit_port_map:
shift_unit port map
	(
		clk			=> f,	--1Khz clock
		reset			=> (reset and rfsh), --reseting the whole unit either by global reset or when 10s or 5s counter are over in the control unit
		enable		=> en,
		data_in		=> pressed_button,
		digit_saved => d_saved,	--signal to demonstrate that the incoming press saved in the shift register going to the control unit
		code_saved	=> comp,	--evaluation button(#) pressed signal going to comparator and control unit
		code_out		=> shift_reg_out	--4 digits code to compare unit, muxed LED 7-Seg displays and 16 LEDs
	);

label_muxed_led_unit_port_map:	
muxed_led_unit	port map
	(
		clk			=> f,	--1Khz clock
		reset			=> reset,
		shift_in 	=> shift_reg_out,
		disp_sel		=> mux_sel,
		led_out		=> debug_led_out
	);
	
label_compare_unit_port_map:	
compare_unit port map
	(
		key			=> password,	--password comming from the switces
		code			=> shift_reg_out,	--password comming from the user's button press
		clk			=> f,
		reset			=> reset,
		refresh		=> rfsh,
		save_enable	=> save,	--button press to save the switces' code
		compare		=> comp,	--evaluation button press(#)
		code_saved	=> saved,--save switches' code signal to turn on a LED
		same			=> equal_pass	--signal to inform control unit for equality or not of compared codes
	);

	
label_ctrl_unit_port_map:	
ctrl_unit port map
	(
		press			=> d_saved,
		cmp_same		=> equal_pass,
		eval_press	=> comp,
		clk			=> f,
		reset			=> reset,
		refresh		=> rfsh,	--signal to reset/refresh some units
		lcd_cmd		=> cmd_lcd	--commands to the LCD to handle the printouts
	);

label_LCD_unit_port_map:
LCD_unit port map
	(
		clk			=> f,	--50MHz clock
		reset			=> reset,
		cmd			=> cmd_lcd,
		LCD_RS		=> LCD_RS,
		LCD_E			=> LCD_E,
		LCD_ON		=> LCD_ON,
		BACK_LED		=> BACK_LED,
		LCD_RW 		=> LCD_RW,
		DATA_BUS		=> DATA_BUS
	);

equal <= equal_pass;	--LED for equality of codes
code <= shift_reg_out;	--demonstartion of every shift register's bit in LEDs 
rst <= not(reset);	--LED for reset button press
end rtl;
