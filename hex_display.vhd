library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex_display is
port

	(
	input		: in  STD_LOGIC_VECTOR(3 downto 0);
	output	: out STD_LOGIC_VECTOR(7 downto 0)
	);
	
end hex_display;

architecture Behavioral of hex_display is

signal display : STD_LOGIC_VECTOR(7 downto 0);

begin
--Decoder/translator of the input(coming from the debounced unti)
--to the apropriate input of the LED 7-Seg displays
--in order to illustrate the desirable number/symbol
process(input)
	begin
	case input is
		when "0000" => display <= "00000011";	--1
		when "0001" => display <= "10011111";	--2
		when "0010" => display <= "00100101";	--3
		when "0011" => display <= "00001101";	--4
		when "0100" => display <= "10011001";	--5
		when "0101" => display <= "01001001";	--6
		when "0110" => display <= "01000001";	--7
		when "0111" => display <= "00011111";	--8
		when "1000" => display <= "00000001";	--9
		when "1001" => display <= "00001001";	--A
		when "1010" => display <= "00010001";	--B
		when "1011" => display <= "11000001";	--C
		when "1100" => display <= "01100011";	--D
		when "1101" => display <= "10000101";	--*
		when "1110" => display <= "11111110";	--#
		when "1111" => display <= "00000000";
		when others => null;
	end case;

end process;

output <= not(display);

end Behavioral;