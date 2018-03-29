library ieee;
use ieee.std_logic_1164.all;

entity sum_of_minterms is
port( a,b,c           : in std_logic;
      output_end          : out std_logic);
end sum_of_minterms;

architecture arch of sum_of_minterms is

--declare the component of the 3 input AND gate
component ted_and3
port(A, B , C : in std_logic; OUTPUT : out std_logic);
end component;

--declare the component of the 3 input OR gate
component ted_or3
port( A, B, C : in std_logic ; OUTPUT : out std_logic);
end component;

signal s1 : std_logic;
signal s2 : std_logic;
signal s3 : std_logic;
signal a_neg, b_neg, c_neg : std_logic;

for U1, U2, U3 : ted_and3 use entity WORK.ted_and3(ted_arch);
for U4 : ted_or3 use entity WORK.ted_or3(ted_arch);

begin
--negate the input signals using concurrent signal assignment
a_neg <= not a;
b_neg <= not b;
c_neg <= not c;


U1: ted_and3 port map(A => a_neg, B => b_neg, C => c, OUTPUT => s1);
U2: ted_and3 port map(A => a_neg, B => b, C => c, OUTPUT => s2);
U3: ted_and3 port map(A => a, B => b, C => c,  OUTPUT => s3);
U4 : ted_or3 port map( A => s1,B => s2, C => s3, OUTPUT => output_end);


--  s1 <= (not a and not b and c);
--  s2 <= (not a and b and c);
--  s3 <= (a and b and c);
--  output <= (s1 or s2 or s3);
end arch;





