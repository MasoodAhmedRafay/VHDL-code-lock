library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparator is

	port
	(
		a			: in std_logic_vector(15 downto 0);
		b			: in std_logic_vector(15 downto 0);
		clk		: in std_logic;
		reset		: in std_logic;
		enable	: in std_logic;
		q			: out std_logic
	);

end entity;

architecture rtl of comparator is

signal tmp		: std_logic;

begin
	--code comparator unit to compare the shaped by switches codes to the one 
	--described by the last four digits the user pressed before evaluation button('enable')
	process(clk, reset, enable, a, b)
	begin

		if (reset = '0') then
			tmp <= '0';
		elsif(clk'event and clk = '1')then
			if (enable = '1') then
				--comparison procedure is implemented by xor-ing the two codes bit by bit
				--and or-ing the xor gates output. Since xor will have 1 as outcome only 
				--for exlusive different bits and code is wronf if at least one bit is different,
				--or gated are used for the xor outputs. Finally, the outbit is inverted to illustrate
				--1 on same codes and zero on different.
				tmp <= not(	(a(15) xor b(15))	or	(a(14) xor b(14))	or	(a(13) xor b(13))	or (a(12) xor b(12))	or 
								(a(11) xor b(11))	or	(a(10) xor b(10))	or	(a(9) xor b(9))	or (a(8) xor b(8))	or 
								(a(7) xor b(7))	or	(a(6) xor b(6))	or	(a(5) xor b(5))	or (a(4) xor b(4))	or 
								(a(3) xor b(3))	or	(a(2) xor b(2))	or	(a(1) xor b(1))	or (a(0) xor b(0))	);
			else
				tmp <= tmp;
			end if;
		end if;
	end process;

	q <= tmp;

end rtl;