library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_control is

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		en_in			: in std_logic;
		num_in		: in std_logic_vector(4 downto 0);
		en_out		: out std_logic;
		ready			: out std_logic;
		num_out		: out std_logic_vector(3 downto 0)
	);

end shift_control;

architecture Behavioral of shift_control is

	signal num							: std_logic_vector(3 downto 0);
	signal cnt							: std_logic_vector(2 downto 0);
	signal ready_to_check, en		: std_logic;

begin

	process(clk, reset, en_in, num_in)
	begin
		--reset case
		if (reset = '0') then
			num <= "0000";	--signal corresponding to num_out going to single LEDs, and muxed LED
			cnt <= "000";	--counter of the presses
			en <= '0';	--enable to push element to shift register
			ready_to_check <= '0';	--signal to inform other units that at least 4 digits have been pressed
		elsif (clk ' event and clk = '1') then
			if (en_in = '1') then	--if there is a new button press
				if (num_in /= "01111") then	--if pressed button is any except #
					if (cnt < "100") then	--if there are less than 4 digits pressed
						cnt <= cnt + "001";	--increment the counter
					end if;
					num <= num_in(3 downto 0);	--set as output (3 downto 0) bits, because MSB is for check if it something pressed or not
					if (ready_to_check = '0') then	--if we have not pressed #(the evaluation button), keep pushing new digits
						en <= en_in;
					else	--ignore every press after # hit 
						en <= not(en_in);
					end if;
				else									--if pressed button is #
					if (cnt > "011") then	--if there are more or equal to 4 digits pressed 
						ready_to_check <= '1';	--allow the valuation
					end if;
					num <= (others => '0');	--send zeros to single LEDs and muxed LED when # is pressed
					en <= not(en_in);	--never push # into the sift register
				end if;
			else
				num <= num_in(3 downto 0);
				en <= en_in;
			end if;
		end if;
	end process;

--assigning corresponding signal(s) to output(s)
num_out <= num;
en_out <= en;
ready <=	ready_to_check;
 	
end Behavioral;

