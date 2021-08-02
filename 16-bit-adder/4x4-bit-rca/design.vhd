library IEEE;
use IEEE.std_logic_1164.all;
entity Rca16 is
port(
  a: in STD_LOGIC_VECTOR (15 downto 0);
  b: in STD_LOGIC_VECTOR (15 downto 0);
  cin: in STD_LOGIC;
  cout: out STD_LOGIC;
  Sum: out STD_LOGIC_VECTOR (15 downto 0));
end Rca16;

architecture Behavioral of Rca16 is

signal c1: STD_LOGIC_VECTOR(4 downto 0);
signal c2: STD_LOGIC_VECTOR(4 downto 0);
signal c3: STD_LOGIC_VECTOR(4 downto 0);
signal c4: STD_LOGIC_VECTOR(4 downto 0);
signal s1: STD_LOGIC_VECTOR(3 downto 0);
signal s2: STD_LOGIC_VECTOR(3 downto 0);
signal s3: STD_LOGIC_VECTOR(3 downto 0);
signal s4: STD_LOGIC_VECTOR(3 downto 0);
signal a1,a2,a3,a4: STD_LOGIC_VECTOR(3 downto 0);
signal b1,b2,b3,b4: STD_LOGIC_VECTOR(3 downto 0);

begin
process(a, b,cin,a1,a2,a3,a4,b1,b2,b3,b4,c1,c2,c3,c4,s1,s2,s3,s4)
variable i:integer;
begin
  a1(3 downto 0)<=a(3 downto 0);
  a2(3 downto 0)<=a(7 downto 4);
  a3(3 downto 0)<=a(11 downto 8);
  a4(3 downto 0)<=a(15 downto 12);
  b1(3 downto 0)<=b(3 downto 0);
  b2(3 downto 0)<=b(7 downto 4);
  b3(3 downto 0)<=b(11 downto 8);
  b4(3 downto 0)<=b(15 downto 12);
c1(0) <= cin;
  for i in 0 to 3 loop
  s1(i) <=a1(i) xor b1(i) xor c1(i);
  c1(i+1) <=(a1(i) and b1(i)) or (b1(i) and c1(i)) or (c1(i) and a1(i));
  end loop;
c2(0) <= c1(4);
  sum(3 downto 0)<=s1(3 downto 0);
  for i in 0 to 3 loop
  s2(i) <=a2(i) xor b2(i) xor c2(i);
  c2(i+1) <=(a2(i) and b2(i)) or (b2(i) and c2(i)) or (c2(i) and a2(i));
  end loop;
c3(0) <= c2(4);
  sum(7 downto 4)<=s2(3 downto 0);
  for i in 0 to 3 loop
  s3(i) <=a3(i) xor b3(i) xor c3(i);
  c3(i+1) <=(a3(i) and b3(i)) or (b3(i) and c3(i)) or (c3(i) and a3(i));
  end loop;
c4(0) <= c3(4);
  sum(11 downto 8)<=s3(3 downto 0);
  for i in 0 to 3 loop
  s4(i) <=a4(i) xor b4(i) xor c4(i);
  c4(i+1) <=(a4(i) and b4(i)) or (b4(i) and c4(i)) or (c4(i) and a4(i));
  end loop;
cout <=c4(4);
sum(15 downto 12)<=s4(3 downto 0);
end process;

end behavioral;

