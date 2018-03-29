library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

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

	variable reg1: std_logic_vector(3 left downto 0);
	variable reg2: std_logic_vector(3 left downto 0);
	variable reg3: std_logic_vector(3 left downto 0);
	variable reg4: std_logic_vector(3 left downto 0);

	updateReg: process (clk)
	begin
	
	end process;

begin

end arch;
	
