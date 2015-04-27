library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compare_unit is

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

end compare_unit;

architecture Behavioral of compare_unit is

component secret_code_register

	port
	(
		d			: in std_logic_vector(15 downto 0);
		clk		: in std_logic;
		reset		: in std_logic;
		enable	: in std_logic;
		set		: out std_logic;
		q			: out std_logic_vector(15 downto 0)
	);

end component;

component comparator

	port
	(
		a			: in std_logic_vector(15 downto 0);
		b			: in std_logic_vector(15 downto 0);
		clk		: in std_logic;
		reset		: in std_logic;
		enable	: in std_logic;
		q			: out std_logic
	);

end component;

signal pass		: std_logic_vector(15 downto 0);

begin

label_secret_code_register_port_map:
component secret_code_register port map
	(
		d			=> key,
		clk		=> clk,
		reset		=> reset,
		enable	=> save_enable,
		set		=> code_saved,
		q			=> pass
	);


label_comparator_port_map:
comparator	port map
	(
		a			=> code,
		b			=> pass,
		clk		=> clk,
		reset		=> (reset and refresh),
		enable	=> compare,
		q			=> same
	);



end Behavioral;

