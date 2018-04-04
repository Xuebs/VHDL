library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity registers_min_max is
	port ( 	din 	: 	in std_logic_vector(3 downto 0);
			sel	:	in std_logic_vector(1 downto 0);
			reset 	: 	in std_logic;
			clk	:	in std_logic;
			max_out	:	out std_logic_vector(3 downto 0);
			min_out	:	out std_logic_vector(3 downto 0);
			reg_out	:	out std_logic_vector(3 downto 0));
end registers_min_max;

architecture arch of registers_min_max is

signal register1 : std_logic_vector(3 downto 0);
signal register2 : std_logic_vector(3 downto 0);
signal register3 : std_logic_vector(3 downto 0);
signal register4 : std_logic_vector(3 downto 0);
signal maxRegister : std_logic_vector(3 downto 0);
signal minRegister : std_logic_vector(3 downto 0);

begin
	updateReg: process (clk, reset) is
		variable reg1 : std_logic_vector(3 downto 0);
		variable reg2 : std_logic_vector(3 downto 0);
		variable reg3 : std_logic_vector(3 downto 0);
		variable reg4 : std_logic_vector(3 downto 0);

	begin
		
		if (clk'event and clk='1') then
			
			reg1 (3 downto 0) := register1 (3 downto 0);
			reg2 (3 downto 0) := register2 (3 downto 0);
			reg3 (3 downto 0) := register3 (3 downto 0);
			reg4 (3 downto 0) := register4 (3 downto 0);

			reg4 (3 downto 0) := reg3(3 downto 0);
			reg3 (3 downto 0) := reg2(3 downto 0);
			reg2 (3 downto 0) := reg1(3 downto 0);
			reg1 (3 downto 0) := din (3 downto 0);

			register4 (3 downto 0) <= reg4 (3 downto 0);
			register3 (3 downto 0) <= reg3 (3 downto 0);
			register2 (3 downto 0) <= reg2 (3 downto 0);
			register1 (3 downto 0) <= reg1 (3 downto 0);
		end if;

		if (reset'event and reset = '1') then
			register1 (3 downto 0)<= "1000";
			register2 (3 downto 0)<= "1000";
			register3 (3 downto 0)<= "1000";
			register4 (3 downto 0)<= "1000";
		end if;

	end process updateReg;

	selReg: process (clk, sel) is
	begin
		case sel is
			when "00" =>
				reg_out(3 downto 0) <= register1 (3 downto 0);
			when "01" =>
				reg_out(3 downto 0) <= register2 (3 downto 0);
			when "10" =>
				reg_out(3 downto 0) <= register3 (3 downto 0);
			when others =>
				reg_out(3 downto 0) <= register4 (3 downto 0);
		end case;
	end process selReg;


	maxOut: process(clk) is
	
	variable tempMax : std_logic_vector(3 downto 0);
	--variable maxComp: std_logic_vector(3 downto 0);

	begin
		tempMax(3 downto 0) := register1(3 downto 0);
		--maxComp(3 downto 0) := maxRegister(3 downto 0);
			
		if (register1 < register2) then
			tempMax(3 downto 0) := register2 (3 downto 0);
		end if;

		if (register2 < register3) then
			tempMax(3 downto 0) := register3(3 downto 0);
		end if;

		if (register3 < register4) then
			tempMax(3 downto 0) := register4(3 downto 0);
		end if;
		
		if (maxRegister < tempMax) then
			maxRegister(3 downto 0) <= tempMax(3 downto 0);
		end if;

	end process maxOut;


	minOut: process(clk) is
	
	variable tempMin : std_logic_vector(3 downto 0);
	--variable minComp : std_logic_vector(3 downto 0);

	begin
		tempMin(3 downto 0) := register1(3 downto 0);
		--minComp(3 downto 0) := minRegister(3 downto 0);

		if (register1 > register2) then
			tempMin(3 downto 0) := register2 (3 downto 0);
		end if;

		if (register2 > register3) then
			tempMin(3 downto 0) := register3(3 downto 0);
		end if;

		if (register3 > register4) then
			tempMin(3 downto 0) := register4(3 downto 0);
		end if;
		
		if(minRegister > tempMin) then
			minRegister(3 downto 0) <= tempMin(3 downto 0);	
		end if;
	end process minOut;	

	max_out (3 downto 0) <= maxRegister (3 downto 0);
	min_out (3 downto 0) <= minRegister (3 downto 0);
end arch;
	
