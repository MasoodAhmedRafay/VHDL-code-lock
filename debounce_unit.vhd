library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debounce_unit is

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		colums		: in std_logic_vector(3 downto 0);	--feedback by the numpad
		press			: out std_logic;	--inform the other units for a new press
		rows			: out std_logic_vector(3 downto 0);	--rotated output to check for key press
		symbol		: out std_logic_vector(4 downto 0)	--corresponding code/symbol of every different press
	);

end debounce_unit;

architecture Behavioral of debounce_unit is

component polling_rotator

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		pause	: in std_logic;
		sel	: out std_logic_vector(3 downto 0)
	);

end component;

component debounce

	port(
		clk			: in std_logic;
		reset			: in std_logic;
		row_in		: in std_logic_vector(3 downto 0);
		column_in	: in std_logic_vector(3 downto 0);
		new_number	: out std_logic;
		freeze		: out std_logic;
		button_out	: out std_logic_vector(4 downto 0)
	);

end component;

signal hold			: std_logic;
signal col			: std_logic_vector(3 downto 0);

begin

label_polling_rotator_port_map:
polling_rotator port map
	(
		clk	=> clk,
		reset	=> reset,
		pause	=> hold,
		sel	=> col	--rotator output as input in debounce units
	);						--but also as output to the numpad to check for press in any row

label_debounce_port_map:
debounce	port map
	(
		clk			=> clk,
		reset			=> reset,
		row_in		=> col,	--rotator output
		column_in	=> colums,
		freeze		=> hold,	--signal to stop the rotator
		new_number	=> press,	--signal for a new press event
		button_out	=> symbol	--data to be send in the shift register
	);

rows <= col;	--rotator output
end Behavioral;

