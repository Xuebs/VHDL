library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity converter is
port( sign_mag : in std_logic_vector(3 downto 0);
	twos_comp : out std_logic_vector(3 downto 0) );

end converter;

architecture arch of converter is

begin
	process (sign_mag)

	variable temp: std_logic_vector(sign_mag'left downto sign_mag'right);

	begin
		--if input is positive, just output the input as is without changing anyting
		if (sign_mag(3) = '0') then
			twos_comp(3) <= not sign_mag(3);
			twos_comp(2) <= not sign_mag(2);
			twos_comp(1) <= not sign_mag(1);
			twos_comp(0) <= not sign_mag(0);

		--if input is negative, need to apply the algorithm outlines in lab manual
		else
			--negate the magnitude bits of the input
			--temp(sign_mag'left downto sign_mag'right) := not sign_mag(sign_mag'left downto sign_mag'right);
			temp(3) := not sign_mag(3);
			temp(2) := not sign_mag(2);
			temp(1) := not sign_mag(1);
			temp(0) := not sign_mag(0);

			--add 1 to the negated bits
			temp(sign_mag'left downto sign_mag'right) := temp(sign_mag'left downto sign_mag'right) + "0001" ;
			
			--set the higher order bit of the output to the high order bit of the input
			temp(sign_mag'left) := sign_mag(sign_mag'left);

			--negate the output for implementation to hardware
			temp(sign_mag'left downto sign_mag'right) := not temp(sign_mag'left downto sign_mag'right); 
			twos_comp(sign_mag'left downto sign_mag'right) <= temp(sign_mag'left downto sign_mag'right); 

		end if;
	end process;

end arch;

