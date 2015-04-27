library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity shift_register is

	port
	(
		d			: in std_logic_vector(3 downto 0);
		clk		: in std_logic;
		reset		: in std_logic;
		enable	: in std_logic;
		q			: out std_logic_vector(15 downto 0)
	);

end entity;

architecture rtl of shift_register is

signal tmp		: std_logic_vector(15 downto 0);

begin
	process(clk, reset, enable)
	begin

		if (reset = '0') then
			tmp <= (others => '0');
		elsif(clk'event and clk = '1')then
			if (enable = '1') then
				--shifting 3rd symbol to the 4th position
				tmp(15) <= tmp(11);
				tmp(14) <= tmp(10);
				tmp(13) <= tmp(9);
				tmp(12) <= tmp(8);
				--shifting 2nd symbol to the 3rd position
				tmp(11) <= tmp(7);
				tmp(10) <= tmp(6);
				tmp(9) <= tmp(5);
				tmp(8) <= tmp(4);
				--shifting 1st symbol to the 2nd position
				tmp(7) <= tmp(3);
				tmp(6) <= tmp(2);
				tmp(5) <= tmp(1);
				tmp(4) <= tmp(0);
				--pushing new symbol to the 1st position
				tmp(3) <= d(3);
				tmp(2) <= d(2);
				tmp(1) <= d(1);
				tmp(0) <= d(0);
				
			else
			
				tmp <= tmp;
				
			end if;
		end if;

	end process;
	
	--assigning corresponding signal(s) to output(s)
	q <= tmp;

end rtl;