-- Design code
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity add_16_from_4 is
Port(a : in STD_LOGIC_VECTOR (15 downto 0);
b : in STD_LOGIC_VECTOR (15 downto 0);
sum : out STD_LOGIC_VECTOR (15 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC);
end add_16_from_4;

architecture Behavioral of add_16_from_4 is
signal c1,c2: STD_LOGIC_VECTOR (4 downto 0);
signal a0,a1,a2,a3,b0,b1,b2,b3,sum0,sum1,sum2,sum3 : STD_LOGIC_VECTOR(3 downto 0);
 
signal p1: std_logic_vector(4 downto 0);
signal g1: std_logic_vector(4 downto 0);
 
signal p2: std_logic_vector(4 downto 0);
signal g2: std_logic_vector(4 downto 0);
signal c3: std_logic_vector(5 downto 0);
signal c4: std_logic_vector(5 downto 0);


begin
process(a,b,cin,c1,c2,c3,c4,p1,g1,p2,g2,a0,a1,a2,a3,b0,b1,b2,b3,sum0,sum1,sum2,sum3)
variable i: integer;

begin
c1(0) <= cin;
a0(3 downto 0) <= a(3 downto 0);
a1(3 downto 0) <= a(7 downto 4);
a2(3 downto 0) <= a(11 downto 8);
a3(3 downto 0) <= a(15 downto 12);
b0(3 downto 0) <= b(3 downto 0);
b1(3 downto 0) <= b(7 downto 4);
b2(3 downto 0) <= b(11 downto 8);
b3(3 downto 0) <= b(15 downto 12);

for i in 0 to 3 loop
sum0(i) <= c1(i) xor a0(i) xor b0(i);
c1(i+1) <= (a0(i) and b0(i)) or (c1(i) and (a0(i) xor b0(i)));
end loop;
c2(0) <= c1(4);
for i in 0 to 3 loop
sum1(i) <= c2(i) xor a1(i) xor b1(i);
c2(i+1) <= (a1(i) and b1(i)) or (c2(i) and (a1(i) xor b1(i)));
end loop;
c3(0) <= c2(4);
for i in 0 to 3 loop
 
p1(i) <= a(i) xor b(i);
g1(i) <= a(i) and b(i);
sum2(i) <= p1(i) xor c3(i);
c3(i+1) <= g1(i) or (c3(i) and p1(i));
 
end loop;

c4(0) <= c3(4);
for i in 0 to 3 loop
 
p2(i) <= a(i) xor b(i);
g2(i) <= a(i) and b(i);
sum3(i) <= p2(i) xor c4(i);
c4(i+1) <= g2(i) or (c4(i) and p2(i));
 
end loop;

cout <= c4(4);

sum(3 downto 0) <= sum0(3 downto 0);
sum(7 downto 4) <= sum1(3 downto 0);
sum(11 downto 8) <= sum2(3 downto 0);
sum(15 downto 12) <= sum3(3 downto 0);

end process;
end Behavioral;
