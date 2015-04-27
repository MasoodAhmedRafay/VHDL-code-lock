library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity polling_rotator is

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		pause	: in std_logic;
		sel	: out std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of polling_rotator is

type state is (ONE, TWO, THREE, FOUR);
signal Fsm_State	: state;
signal rot			: std_logic_vector(3 downto 0) := (others => '1');

begin
	--rotator implemented by a cyclic FSM changing state every new clock rising edge
	--rotating a '0' in a 4bit output of 3 aces and the zero, when pause it is not 'high'.
	--when a button is pressed it stops rotating to be kept the specific output of the
	--colums, in order to avoid misbehavior of the keypad 
	process(clk, reset, pause)
	begin

		if (reset = '0') then
			FSM_State <= ONE;
		elsif(clk' event and clk = '1')then
			case FSM_State is
---------------------------------------------------------
				when ONE =>
					if (pause = '1') then
						FSM_State <= ONE;
					else
						FSM_State <= TWO;
					end if;
---------------------------------------------------------
				when TWO =>
					if (pause = '1') then
						FSM_State <= TWO;
					else
						FSM_State <= THREE;
					end if;
---------------------------------------------------------
				when THREE =>
					if (pause = '1') then
						FSM_State <= THREE;
					else
						FSM_State <= FOUR;
					end if;
---------------------------------------------------------
				when FOUR =>
					if (pause = '1') then
						FSM_State <= FOUR;
					else
						FSM_State <= ONE;
					end if;
---------------------------------------------------------
				end case;
			end if;
	end process;
	
	process(reset, FSM_State)
	begin

		if (reset = '0') then
			rot <= (others => '0');
		else
			case FSM_State is
---------------------------------------------------------
				when ONE =>
					rot <= "0111";
---------------------------------------------------------
				when TWO =>
					rot <= "1011";
---------------------------------------------------------
				when THREE =>
					rot <= "1101";
---------------------------------------------------------
				when FOUR =>
					rot <= "1110";
---------------------------------------------------------
				end case;

			end if;

	end process;
sel <= rot;
end rtl;
