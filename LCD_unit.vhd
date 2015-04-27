library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD_unit is

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		cmd			: in std_logic_vector(2 downto 0);		--command comming from the control unit to handle the screen prinout
		LCD_RS		: out std_logic;								-----------------------------
		LCD_E			: out std_logic;								--									--
		LCD_ON		: out std_logic;								--signals to handle the LCD--
		BACK_LED		: out std_logic;								--									--
		LCD_RW 		: buffer std_logic;							--									--
		DATA_BUS		: inout std_logic_vector(7 downto 0)	-----------------------------
	);

end LCD_unit;

ARCHITECTURE rtl OF LCD_unit IS
	TYPE STATE_TYPE IS (RESET1, RESET2, RESET3, FUNC_SET, DISPLAY_OFF, DISPLAY_CLEAR, DISPLAY_ON, MODE_SET, TOGGLE_E, HOLD, 
	WRITE_CL1,	WRITE_OP1,	WRITE_ER0,	WRITE_ST0,
	WRITE_CL2,	WRITE_OP2,	WRITE_ER1,	WRITE_ST1,
	WRITE_CL3,	WRITE_OP3,	WRITE_ER2,	WRITE_ST2,
	WRITE_CL4,	WRITE_OP4,	WRITE_ER3,	WRITE_ST3,
	WRITE_CL5,	WRITE_OP5,	WRITE_ER4,	WRITE_ST4,
	WRITE_CL6,	WRITE_OP6,	WRITE_ER5,
	WRITE_CL7,	WRITE_OP7,
	WRITE_CL8,	WRITE_OP8,
	WRITE_CL9,	WRITE_OP9,
	WRITE_CL10,
	WRITE_CL11,
	RETURN_HOME, RETURN_ER_HOME, RETURN_OP_HOME);
	SIGNAL state, next_command		: STATE_TYPE;
	SIGNAL DATA_BUS_VALUE			: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL error, correct			: STD_LOGIC;
	SIGNAL cnt							: STD_LOGIC_VECTOR(2 DOWNTO 0);
	
BEGIN
	LCD_ON <= '1';
	BACK_LED <= '1';
-- BIDIRECTIONAL TRI STATE LCD DATA BUS
	DATA_BUS <= DATA_BUS_VALUE WHEN LCD_RW = '0' ELSE "ZZZZZZZZ";

	PROCESS (clk, reset, cmd)
	BEGIN
		IF reset = '0' THEN
			state <= RESET1;
			DATA_BUS_VALUE <= X"38";
			next_command <= RESET2;
			error <= '0';
			correct <= '0';
			LCD_E <= '1';
			LCD_RS <= '0';
			LCD_RW <= '0';
			cnt <= "000";

		ELSIF clk'EVENT AND clk = '1' THEN
			CASE state IS
-- Set Function to 8-bit transfer and 2 line display with 5x8 Font size
				WHEN RESET1 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= RESET2;
				WHEN RESET2 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= RESET3;
				WHEN RESET3 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= FUNC_SET;
-- EXTRA STATES ABOVE ARE NEEDED FOR RELIABLE PUSHBUTTON RESET OF LCD
				WHEN FUNC_SET =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= DISPLAY_OFF;
-- Turn off Display and Turn off cursor
				WHEN DISPLAY_OFF =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"08";
						state <= TOGGLE_E;
						next_command <= DISPLAY_CLEAR;
-- Turn on Display and Turn off cursor
				WHEN DISPLAY_CLEAR =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"01";
						state <= TOGGLE_E;
						next_command <= DISPLAY_ON;
-- Turn on Display and Turn off cursor
				WHEN DISPLAY_ON =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"0C";
						state <= TOGGLE_E;
						next_command <= MODE_SET;
-- Set write mode to auto increment address and move cursor to the right
				WHEN MODE_SET =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"06";
						state <= TOGGLE_E;
						if (error = '1') then			--after clear or reset go to "Error" printout
							next_command <= WRITE_ER0;
						elsif (correct = '1') then		--after clear or reset go to "Door Open" printout
							next_command <= WRITE_OP1;	
						else									--after clear or reset go to "Door Closed/Door Closed ****" printout
							next_command <= WRITE_CL1;
						end if;
----------------------------------------------------------------------------------------
				WHEN WRITE_CL1 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"44";	--send letter "D" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL2;
				WHEN WRITE_CL2 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6f";	--send letter "o" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL3;
				WHEN WRITE_CL3 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6f";	--send letter "o" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL4;
				WHEN WRITE_CL4 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"72";	--send letter "r" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL5;
				WHEN WRITE_CL5 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"20";	--send letter "white space/empty" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL6;
				WHEN WRITE_CL6 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"43";	--send letter "C" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL7;
				WHEN WRITE_CL7 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6c";	--send letter "l" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL8;
				WHEN WRITE_CL8 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6f";	--send letter "o" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL9;
				WHEN WRITE_CL9 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"73";	--send letter "s" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL10;
				WHEN WRITE_CL10 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"65";	--send letter "e" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_CL11;
				WHEN WRITE_CL11 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"64";	--send letter "d" to the LCD pointer's position
						state <= TOGGLE_E;
						if (cnt > "000") then		--if at least one * are already printed, proceed to * printout
							next_command <= WRITE_ST0;
						else								--else return home
							next_command <= RETURN_HOME;
						end if;
----------------------------------------------------------------------------------------
				WHEN WRITE_ST0 =>						
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"C0";	--change line move pointer to corresponding first position of second row of the screen
						state <= TOGGLE_E;
						next_command <= WRITE_ST1;
				WHEN WRITE_ST1 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"2a";	--send character "*" to the LCD pointer's position
						state <= TOGGLE_E;
						if (cnt > "001") then
							next_command <= WRITE_ST2;	--if more than one * are already printed, proceed to the nest * printout
						else
							next_command <= RETURN_HOME;	--else return home
						end if;
				WHEN WRITE_ST2 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"2a";	--send character "*" to the LCD pointer's position
						state <= TOGGLE_E;
						if (cnt > "010") then
							next_command <= WRITE_ST3;	--if more than two * are already printed, proceed to the nest * printout
						else
							next_command <= RETURN_HOME;	--else return home
						end if;
				WHEN WRITE_ST3 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"2a";	--send character "*" to the LCD pointer's position
						state <= TOGGLE_E;
						if (cnt > "011") then
							next_command <= WRITE_ST4;	--if more than three * are already printed, proceed to the nest * printout
						else
							next_command <= RETURN_HOME;	--else return home
						end if;
				WHEN WRITE_ST4 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"2a";	--send character "*" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= RETURN_HOME;	--return home
----------------------------------------------------------------------------------------				
				WHEN WRITE_ER0 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"C0";	--change line move pointer to corresponding first position of second row of the screen
						state <= TOGGLE_E;
						next_command <= WRITE_ER1;
				WHEN WRITE_ER1 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"45";	--send letter "E" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_ER2;
				WHEN WRITE_ER2 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"72";	--send letter "r" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_ER3;
				WHEN WRITE_ER3 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"72";	--send letter "r" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_ER4;
				WHEN WRITE_ER4 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6f";	--send letter "o" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_ER5;
				WHEN WRITE_ER5 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"72";	--send letter "r" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= RETURN_ER_HOME;	--return to custom home
				WHEN RETURN_ER_HOME =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"80";	--move the cursor at the beginning
						state <= TOGGLE_E;
						if (error = '1') then		--if Error prtint instruction still exists continue cyclic printing
							next_command <= WRITE_ER0;
						else								--else clear the screen
							next_command <= DISPLAY_CLEAR;
						end if;
----------------------------------------------------------------------------------------
				WHEN WRITE_OP1 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"44";	--send letter "D" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP2;
				WHEN WRITE_OP2 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6f";	--send letter "o" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP3;
				WHEN WRITE_OP3 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6f";	--send letter "o" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP4;
				WHEN WRITE_OP4 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"72";	--send letter "r" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP5;
				WHEN WRITE_OP5 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"20";	--send letter "white space/empty" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP6;
				WHEN WRITE_OP6 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"4f";	--send letter "O" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP7;
				WHEN WRITE_OP7 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"70";	--send letter "p" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP8;
				WHEN WRITE_OP8 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"65";	--send letter "e" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= WRITE_OP9;
				WHEN WRITE_OP9 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"6e";	--send letter "n" to the LCD pointer's position
						state <= TOGGLE_E;
						next_command <= RETURN_OP_HOME;	--return to custom home
				WHEN RETURN_OP_HOME =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"80";	--move the cursor at the beginning
						state <= TOGGLE_E;
						if (correct = '1') then
							next_command <= WRITE_OP1;	--if Door Open prtint instruction still exists continue cyclic printing
						else
							next_command <= DISPLAY_CLEAR;	--else clear the screen
						end if;
----------------------------------------------------------------------------------------
				WHEN RETURN_HOME =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"80";	--move the cursor at the beginning
						state <= TOGGLE_E;
						if (cnt > "000") then	--if at least one * are already printed, proceed to * printout
							next_command <= WRITE_ST0;
						elsif (error = '1') then	---if Error prtint instruction came clear screen and procced to Error printout
							next_command <= DISPLAY_CLEAR;
						elsif (correct = '1') then	---if Door Open prtint instruction came clear screen and procced to Door Open printout
							next_command <= DISPLAY_CLEAR;
						else								--else continue cyclic printout for Door Closed
							next_command <= WRITE_CL1;
						end if;
----------------------------------------------------------------------------------------
-- The next two states occur at the end of each command to the LCD
-- Toggle E line - falling edge loads inst/data to LCD controller
				WHEN TOGGLE_E =>
						LCD_E <= '0';
						if (cmd = "001") then	--command for fisrt * print
							cnt <= "001";
							error <= '0';
							correct <= '0';
						elsif (cmd = "010") then	--command for second * print
							cnt <= "010";
							error <= '0';
							correct <= '0';
						elsif (cmd = "011") then	--command for third * print
							cnt <= "011";
							error <= '0';
							correct <= '0';
						elsif (cmd = "100") then	--command for fourth * print
							cnt <= "100";
							error <= '0';
							correct <= '0';	
						elsif (cmd = "101") then	--command for Error message print
							cnt <= "000";
							error <= '1';
							correct <= '0';
						elsif (cmd = "110") then	--command for Door Open message print
							cnt <= "000";
							error <= '0';
							correct <= '1';
						else								--command for Door Closed message print
							error <= '0';
							correct <= '0';
						end if;
						state <= HOLD;
-- Hold LCD inst/data valid after falling edge of E line
				WHEN HOLD =>
						state <= next_command;
----------------------------------------------------------------------------------------
			END CASE;
		END IF;
	END PROCESS;
END rtl;
