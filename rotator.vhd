library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity rotator is

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		sel	: out std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of rotator is

type state is (ONE, TWO, THREE, FOUR);

signal Fsm_State	: state;
signal rot			: std_logic_vector(3 downto 0) := (others => '0');

begin
	--rotator implemented by a cyclic FSM changing state every new clock rising edge
	--rotating an '1' in a 4bit output of 3 zeros and the ace.
	process(clk, reset)
	begin

		if (reset = '0') then
			rot <= (others => '0');
			FSM_State <= ONE;
		elsif(clk' event and clk = '1')then
			case FSM_State is
---------------------------------------------------------
				when ONE =>
					rot <= "0001";
					FSM_State <= TWO;
---------------------------------------------------------
				when TWO =>
					rot <= "0010";
					FSM_State <= THREE;
---------------------------------------------------------
				when THREE =>
					rot <= "0100";
					FSM_State <= FOUR;
---------------------------------------------------------
				when FOUR =>
					rot <= "1000";
					FSM_State <= ONE;
---------------------------------------------------------
				end case;

			end if;

	end process;
sel <= rot;
end rtl;
