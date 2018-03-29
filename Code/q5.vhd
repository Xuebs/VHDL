library ieee;
use ieee.std_logic_1164.all;

entity keith is
port(	input_1	:	in std_logic;
	output	:	out std_logic);
end keith;

architecture rtl of keith is

signal first, second: std_logic;

begin

	first <= not input_1;
	second <= not first;
	output <= second;
end rtl;
	
