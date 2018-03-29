library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity registers_min_max is
port ( 	din 	: 	in std_logic_vector(3 downto 0);
	reset 	: 	in std_logic;
	clk	:	in std_logic;
	sel	:	in std_logic_vector(1 downto 0);
	max_out	:	out std_logic_vector(3 downto 0);
	min_out	:	out std_logic_vector(3 downto 0);
	reg_out	:	out std_logic_vector(3 downto 0);)
end registers_min_max;

architecture arch of registers_min_max is

begin
	
