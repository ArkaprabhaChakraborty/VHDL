library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity restoring is
port(
  m: in STD_LOGIC_VECTOR (7 downto 0);
  q: in STD_LOGIC_VECTOR (7 downto 0);
  q1: out STD_LOGIC_VECTOR (7 downto 0);
  r: out STD_LOGIC_VECTOR (7 downto 0));
end restoring;

architecture Behavioral of restoring is

begin
process(m,q)
variable y,z: unsigned(7 downto 0);
variable i : integer;
variable num : STD_LOGIC_VECTOR (15 downto 0);
variable num1 : bit_vector(15 downto 0);

begin
num := "0000000000000000";
y := unsigned(m);
num(7 downto 0) := q;

for i in 0 to 7 loop
num1 := to_bitvector(num);
num1 := num1 sll 1;
num := to_stdlogicvector(num1);
z := unsigned(num(15 downto 8));
num(15 downto 8) := (z-y);

if (num(15) = '0') then
num(0) := '1';
elsif (num(15) = '1') then
num(0) := '0';
z := unsigned(num(15 downto 8));
num(15 downto 8) := (z+y);
end if;

end loop;
q1(7 downto 0) <= num(7 downto 0);
r(7 downto 0) <= num(15 downto 8);

end process;
end behavioral;

