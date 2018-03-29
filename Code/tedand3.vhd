library ieee;
use ieee.std_logic_1164.all;

entity ted_and3 is
port(A,B,C : in std_logic ; OUTPUT: out std_logic);
end ted_and3;

architecture ted_arch of ted_and3 is
begin

OUTPUT <= A and B and C;

end ted_arch;

