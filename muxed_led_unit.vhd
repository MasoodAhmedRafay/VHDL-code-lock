library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxed_led_unit is

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		shift_in		: in std_logic_vector(15 downto 0);	--output of the shift register to be depicted by LED 7-Seg displays
		disp_sel		: out std_logic_vector(3 downto 0);	--signal to select each time the next LED 7-Seg display, in a round way
		led_out		: out std_logic_vector(7 downto 0)	--output to be driven as LED 7-Seg display input
	);

end muxed_led_unit;

architecture Behavioral of muxed_led_unit is

component rotator

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		sel	: out std_logic_vector(3 downto 0)
	);

end component;


component hex_display
port

	(
	input		: in  STD_LOGIC_VECTOR(3 downto 0);
	output	: out STD_LOGIC_VECTOR(7 downto 0)
	);

end component;

component mux_4to1

	port(
		disp_3		: in std_logic_vector(7 downto 0);
		disp_2		: in std_logic_vector(7 downto 0);
		disp_1		: in std_logic_vector(7 downto 0);
		disp_0		: in std_logic_vector(7 downto 0);
		sel			: in std_logic_vector(3 downto 0);
		hex_out		: out std_logic_vector(7 downto 0)
	);

end component;

signal led_sel								: std_logic_vector(3 downto 0);
signal led_3, led_2, led_1, led_0	: std_logic_vector(7 downto 0);


begin

label_rotator_port_map:
rotator port map
	(
		clk	=> clk,
		reset	=> reset,
		sel	=> led_sel
	);

label_hex_display_3_port_map:
hex_display port map
	(
	input		=> shift_in(15 downto 12),	--MSB pushed number
	output	=> led_3
	);

label_hex_display_2_port_map:
hex_display port map
	(
	input		=> shift_in(11 downto 8),	--leftmost middle number
	output	=> led_2
	);

label_hex_display_1_port_map:
hex_display port map
	(
	input		=> shift_in(7 downto 4),	--rightmost middle number
	output	=> led_1
	);

label_hex_display_0_port_map:
hex_display port map
	(
	input		=> shift_in(3 downto 0),	--LSB pushed number
	output	=> led_0
	);	

label_mux_4to1_port_map:	
mux_4to1 port map
	(
		disp_3	=> led_0,
		disp_2	=> led_1,
		disp_1	=> led_2,
		disp_0	=> led_3,
		sel		=> led_sel,
		hex_out	=> led_out
	);

disp_sel <= led_sel;	

end Behavioral;

