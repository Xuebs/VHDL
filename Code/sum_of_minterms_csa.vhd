library ieee;
use ieee.std_logic_1164.all;

entity sum_of_minterms_csa is
port( a,b,c           : in std_logic;
      output_end          : out std_logic);
end sum_of_minterms_csa;

architecture arch of sum_of_minterms_csa is

signal s1 : std_logic;
signal s2 : std_logic;
signal s3 : std_logic;

begin

s1 <= (not a and not b and c);
s2 <= (not a and b and c);
s3 <= (a and b and c);

output_end <= (s1 or s2 or s3);

end arch;





