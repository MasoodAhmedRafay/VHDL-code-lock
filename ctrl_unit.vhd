library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ctrl_unit is

	port
	(
		press			: in std_logic;
		cmp_same		: in std_logic;
		eval_press	: in std_logic;
		clk			: in std_logic;
		reset			: in std_logic;
		refresh		: out std_logic;
		lcd_cmd		: out std_logic_vector(2 downto 0)
	);

end ctrl_unit;

architecture Behavioral of ctrl_unit is

	type state is (IDLE, WAIT_FOR_EVAL, WAIT_FOR_CMP, HOLD_10, HOLD_5, P_1, P_2, P_3);
	signal FSM_State									: state;
	signal rfs	: std_logic;
	signal lcd	: std_logic_vector(2 downto 0);
	signal cnt	: std_logic_vector(13 downto 0);
	
begin

	process(clk, reset)
	begin

		if (reset = '0') then
			lcd <= "000";
			cnt <= (others => '0');
			rfs <= '1';
			FSM_State <= IDLE;
		elsif (clk ' event and clk = '1') then
			case FSM_State is
---------------------------------------------------------
				when IDLE =>
					rfs <= '1';
					if (press = '1') then	--if we receive by the shift control unit a new press
						lcd <= "001";			--we send the command for the first * to be printed
						FSM_State <= P_1;		--and move on
					else							--otherwise
						lcd <= "000";			--keep sending the command for "Door Closed" print
						FSM_State <= IDLE;	--and return at the same state
					end if;
---------------------------------------------------------
				when P_1 =>
					if (press = '1') then	--if we receive by the shift control unit a new press
						lcd <= "010";			--we send the command for the second * to be printed
						FSM_State <= P_2;		--and move on
					else							--otherwise
						FSM_State <= P_1;		--stay on the same state sending the same command
					end if;
---------------------------------------------------------
				when P_2 =>
					if (press = '1') then	--if we receive by the shift control unit a new press
						lcd <= "011";			--we send the command for the third * to be printed
						FSM_State <= P_3;		--and move on
					else							--otherwise
						FSM_State <= P_2;		--stay on the same state sending the same command
					end if;
---------------------------------------------------------
				when P_3 =>
					if (press = '1') then				--if we receive by the shift control unit a new press
						lcd <= "100";						--we send the command for the fourth * to be printed
						FSM_State <= WAIT_FOR_EVAL;	--and move on to the waiting compare button(#) press state 
					else										--otherwise
						FSM_State <= P_3;					--stay on the same state sending the same command
					end if;
---------------------------------------------------------
				when WAIT_FOR_EVAL =>
					if(eval_press = '1')then			--if we receive by the shift control unit a (#) press
						cnt <= (others => '0');
						FSM_State <= WAIT_FOR_CMP;		--move to the comparison result check state
					else
						FSM_State <= WAIT_FOR_EVAL;	--else stay on the same waiting
					end if;
---------------------------------------------------------
				when WAIT_FOR_CMP =>
					if (cmp_same = '1') then		--in case of same codes
						lcd <= "110";					--send the command for "Door Open"
						FSM_State <= HOLD_10;		--go to state for 10s waiting
					else									--in case of wrong code
						lcd <= "101";					--send the command for "Error"
						FSM_State <= HOLD_5;			--go to state for 5s waiting
					end if;				
---------------------------------------------------------
				when HOLD_10 =>
					if (cnt = "10011100010000") then		--if we reach the cnt limit
						cnt <= (others => '0');				--reset the cnt
						rfs <= '0';								--refresh the comparator, the shift register and its control unit
						FSM_State <= IDLE;
					else											--else increment
						cnt <= cnt + '1';
						FSM_State <= HOLD_10;
					end if;
---------------------------------------------------------
				when HOLD_5 =>
					if (cnt = "01001110001000") then		--if we reach the cnt limit
						cnt <= (others => '0');				--reset the cnt
						rfs <= '0';								--refresh the comparator, the shift register and its control unit 
						FSM_State <= IDLE;
					else											--else increment
						cnt <= cnt + '1';
						FSM_State <= HOLD_5;
					end if;
---------------------------------------------------------
			end case;
		end if;

	end process;
lcd_cmd <= lcd;
refresh <= rfs;
end Behavioral;