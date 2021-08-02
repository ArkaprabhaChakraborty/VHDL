library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity booths1 is
port(
  m: in STD_LOGIC_VECTOR (3 downto 0);
  q: in STD_LOGIC_VECTOR (3 downto 0);
  p: out STD_LOGIC_VECTOR (7 downto 0));
end booths1;

architecture Behavioral of booths1 is

begin
process(m,q)
variable y,z: unsigned(3 downto 0);
variable i : integer;
variable num : STD_LOGIC_VECTOR (8 downto 0);
variable num1 : bit_vector(8 downto 0);

begin
num := "000000000";
y := unsigned(m);
num(4 downto 1) := q;

for i in 0 to 3 loop
if (num(1) = '1' and num(0) = '0') then
z := unsigned(num(8 downto 5));
num(8 downto 5) := (z-y);
elsif (num(1) = '0' and num(0) = '1') then
z := unsigned(num(8 downto 5));
num(8 downto 5) := (z+y);
end if;

num1 := to_bitvector(num);
num1 := num1 sra 1;
num := to_stdlogicvector(num1);

end loop;

p(7 downto 0) <= num(8 downto 1);
end process;
end behavioral;
