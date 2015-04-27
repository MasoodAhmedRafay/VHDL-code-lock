library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity secret_code_register is

	port
	(
		d			: in std_logic_vector(15 downto 0);
		clk		: in std_logic;
		reset		: in std_logic;
		enable	: in std_logic;
		set		: out std_logic;
		q			: out std_logic_vector(15 downto 0)
	);

end entity;

architecture rtl of secret_code_register is

signal tmp		: std_logic_vector(15 downto 0);
signal t			: std_logic;

begin
	--simple register to save code shaped by the switches after a press of save button('enable')
	process(clk, reset, enable)
	begin

		if (reset = '0') then
			tmp <= (others => '0');
			t <= '0';
		elsif(clk'event and clk = '1')then
			if (enable = '0') then
				t <= '1';
				tmp <= d;
			else
				t <= t;
				tmp <= tmp;
			end if;
		end if;
	end process;
	
	set <= t;
	q <= tmp;

end rtl;