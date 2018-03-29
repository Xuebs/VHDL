library ieee;
use ieee.std_logic_1164.all;

entity ted_or3 is
port(A,B, C: in std_logic; OUTPUT : out std_logic);
end ted_or3;

architecture ted_arch of ted_or3 is
begin

OUTPUT <= A or B or C;

end ted_arch;

