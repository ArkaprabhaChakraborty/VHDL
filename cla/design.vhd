library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cla is
port(a: in std_logic_vector(7 downto 0);
b: in std_logic_vector(7 downto 0);
cin: in std_logic;
sum: out std_logic_vector(7 downto 0);
cout: out std_logic);
end cla;

architecture rtl of cla is

signal p: std_logic_vector(7 downto 0);
signal g: std_logic_vector(7 downto 0);
signal c: std_logic_vector(8 downto 0);

begin
process(a,b,cin,p,g,c)
variable i: integer;
begin
c(0) <= cin;
for i in 0 to 7 loop

p(i) <= a(i) xor b(i);
g(i) <= a(i) and b(i);
sum(i) <= p(i) xor c(i);
c(i+1) <= g(i) or (c(i) and p(i));

end loop;

cout <= c(8);
end process;
end rtl;

