library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity freq_divider is

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		freq	: out std_logic
	);

end entity;

architecture rtl of freq_divider is

signal cnt	: std_logic_vector(15 downto 0) := (others => '0');
signal f		: std_logic;

--simple frequency divider implemented by a counter
--counter increments every risign edge of the 50MHz clock
--every time it reaches a target it reverses its previous output and restarts.
begin

	process(clk, reset)
	begin

		if (reset = '0') then
			cnt <= (others => '0');
			f <= '0';
		elsif(clk' event and clk = '1')then
			if(cnt = "0110000110101000") then 
				f <= not(f);
				cnt <= (others => '0');
			else
				cnt <= cnt + '1';
			end if;
		end if;
	end process;
freq <= f;
end rtl;
