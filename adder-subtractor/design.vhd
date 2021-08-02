-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity add_sub is
port(A: in std_logic_vector(7 downto 0);
B: in std_logic_vector(7 downto 0);
Cin: in std_logic;
M: in std_logic;
S: out std_logic_vector(7 downto 0);
Cout: out std_logic);
end add_sub;

architecture Behavioral of add_sub is
signal C: std_logic_vector(8 downto 0);

begin
process(A,B,Cin,C,M)
variable i: integer;
begin
if M ='0' then
C(0) <=Cin;
else
C(0) <= M;
end if;

for i in 0 to 7 loop
S(i) <= A(i) xor (B(i) xor M) xor C(i);
C(i+1) <= (A(i) and (B(i) xor M)) or ((B(i) xor M) and C(i)) or (C(i) and A(i));
end loop;
Cout <= C(8);
end process;
end Behavioral;

