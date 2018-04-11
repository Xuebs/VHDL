library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity reg_scramble is
	port ( 		keith 		: 	in std_logic_vector(7 downto 0);
			reset 		: 	in std_logic;
			clk		:	in std_logic;
			ld, scramble 	:	in std_logic;
			size		:	in std_logic_vector(1 downto 0);
			keith_out	:	out std_logic_vector(7 downto 0));
end reg_scramble;

architecture arch of reg_scramble is

signal mainRegister : std_logic_vector(7 downto 0) := "00000000";


begin

	loadregister: process (clk, size, ld, reset)
	begin
		if (reset'event and reset = '1') then
			--mainRegister (7 downto 0) <= "00000000";
			--keith_out (7 downto 0) <= "00000000";

		elsif (clk'event and clk = '1' and ld = '1') then
			case size is
				when "00" =>
					mainRegister(1 downto 0) <= keith (1 downto 0);
				when "01" =>
					mainRegister(3 downto 0) <= keith (3 downto 0);
				when "10" =>
					mainRegister(5 downto 0) <= keith (5 downto 0);
				when others =>
					mainRegister(7 downto 0) <= keith (7 downto 0);
			end case;
		end if;
		
		if(clk'event and clk = '0' and scramble = '0') then
			keith_out (7 downto 0) <= mainRegister (7 downto 0);
		end if;

		if(clk'event and clk = '0' and scramble = '1') then
			keith_out (1) <= mainRegister (0);
			keith_out (0) <= mainRegister (1);
			keith_out (3) <= mainRegister (2);
			keith_out (2) <= mainRegister (3);
			keith_out (5) <= mainRegister (4);
			keith_out (4) <= mainRegister (5);
			keith_out (7) <= mainRegister (6);
			keith_out (6) <= mainRegister (7);
		end if;

	end process loadRegister;

	--resetRegister: process (reset)
	--begin
		--if (reset'event and reset = '1') then
			--mainRegister (7 downto 0) <= "00000000";
			--keith_out (7 downto 0) <= "00000000";
		--end if;
	--end process resetRegister;
	
end arch;


		
