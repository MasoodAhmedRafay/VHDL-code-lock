library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debounce is

	port(
		clk			: in std_logic;
		reset			: in std_logic;
		row_in		: in std_logic_vector(3 downto 0);
		column_in	: in std_logic_vector(3 downto 0);
		freeze		: out std_logic;
		new_number	: out std_logic;
		button_out	: out std_logic_vector(4 downto 0)
	);

end debounce;

architecture Behavioral of debounce is

	type state is (NO_SAMPLING, SAMPLING, WAIT_FOR_RELEASE);
	signal Column_State		: state;
	signal column_cnt			: std_logic_vector(7 downto 0);
	signal column_tmp			: std_logic_vector(3 downto 0);
	signal column_new			: std_logic;

begin
	--the manin concept of this unit is to detect the first change of the input we get from the colums
	--when we detect one of the accepted inputs, then we stop sampling it for some time quite enough to 
	--pass the bounching time and after that we check again the input to see if the uses keeps pushing the
	--same button, so as to  consider it as one and only push
	process(clk, reset, column_in, column_cnt)
	begin

		if (reset = '0') then
			Column_State <= SAMPLING;
			column_tmp <= (others => '1');
			column_cnt <= "11001000";
			column_new <= '0';
		elsif (clk ' event and clk = '1') then
			case Column_State is
---------------------------------------------------------
				when SAMPLING =>
					column_cnt <= "11001000";	--initialize our counter
					column_new <= '0';
					if ((column_in = "0111") or (column_in = "1011") or (column_in = "1101") or (column_in = "1110")) then	--detect desirable input
						column_new <= '1';	--inform other modusle/entities that we got a new press
						column_tmp <= column_in;	--save it
						Column_State <= NO_SAMPLING;
					else
						Column_State <= SAMPLING;
						column_tmp <= (others => '1');
					end if;
---------------------------------------------------------
				when NO_SAMPLING =>
					column_new <= '0';
					column_cnt <= column_cnt - '1';	--decrementig the counter
					if (column_cnt > "00000000") then	--if counter is still counting down stay at the same state
						Column_State <= NO_SAMPLING;
					elsif (column_in = column_tmp) then	--else if counter is done check if the user still presses the button
						Column_State <= WAIT_FOR_RELEASE;
					else	--other wise go back at sampling state
						Column_State <= SAMPLING;
					end if;
					column_tmp <= column_tmp;
---------------------------------------------------------
				when WAIT_FOR_RELEASE =>
					column_cnt <= (others=>'0');
					if (column_in = column_tmp) then	--stay at the same state as long as you get the same input as the initial sampled one
						column_tmp <= column_tmp;
						Column_State <= WAIT_FOR_RELEASE;
					else	--otherwise go back in sampling
						Column_State <= SAMPLING;
					end if;

			end case;

		end if;

	end process;
	
	
	button_out <= "00001" when((row_in = "0111") and (column_tmp = "0111"))else
						"00010" when((row_in = "0111") and (column_tmp = "1011"))else
						"00011" when((row_in = "0111") and (column_tmp = "1101"))else
						"00100" when((row_in = "1011") and (column_tmp = "0111"))else
						"00101" when((row_in = "1011") and (column_tmp = "1011"))else
						"00110" when((row_in = "1011") and (column_tmp = "1101"))else
						"00111" when((row_in = "1101") and (column_tmp = "0111"))else
						"01000" when((row_in = "1101") and (column_tmp = "1011"))else
						"01001" when((row_in = "1101") and (column_tmp = "1101"))else
						"01010" when((row_in = "0111") and (column_tmp = "1110"))else
						"01011" when((row_in = "1011") and (column_tmp = "1110"))else
						"01100" when((row_in = "1101") and (column_tmp = "1110"))else
						"01101" when((row_in = "1110") and (column_tmp = "1110"))else
						"01110" when((row_in = "1110") and (column_tmp = "0111"))else
						"01111" when((row_in = "1110") and (column_tmp = "1101"))else
						"00000" when((row_in = "1110") and (column_tmp = "1011"))else
						"11111";

	new_number <= column_new;
	freeze <= (column_in(3) nand column_in(2)) or (column_in(1) nand column_in(0));

end Behavioral;

