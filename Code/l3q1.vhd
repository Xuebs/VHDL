library IEEE;
use IEEE.std_logic_1164.all;

entity is_this_good_ou_mauvaise is
port( mick : in std_logic;
	keith : out std_logic);
end;

architecture rtl of is_this_good_ou_mauvaise is

begin
	signal stone : std_logic;

		process(mick)
		begin
			stone <= mick and stone;
		end ;
		keith <= stone ; tout le monde sais que Keith == stone
end ;
