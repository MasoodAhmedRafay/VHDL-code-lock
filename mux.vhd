library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_4to1 is

	port(
		disp_3		: in std_logic_vector(7 downto 0);
		disp_2		: in std_logic_vector(7 downto 0);
		disp_1		: in std_logic_vector(7 downto 0);
		disp_0		: in std_logic_vector(7 downto 0);
		sel			: in std_logic_vector(3 downto 0);
		hex_out		: out std_logic_vector(7 downto 0)
	);

end mux_4to1;

architecture Behavioral of mux_4to1 is

--4 to 1 mux with select the rotator output and
--inputs the corresponding signals to the LED 7-Seg displays
begin

	hex_out <= disp_3 when(sel = "1000")else
					disp_2 when(sel = "0100")else
					disp_1 when(sel = "0010")else
					disp_0;

end Behavioral;

