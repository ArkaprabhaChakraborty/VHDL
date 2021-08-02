library IEEE;
use IEEE.std_logic_1164.all;

entity rca is
port(
  a: in std_logic_vector (7 downto 0);
  b: in std_logic_vector (7 downto 0);
cin: in std_logic;
cout: out std_logic;
  s: out std_logic_vector (7 downto 0));
end rca;

architecture rtl of rca is
signal c: std_logic_vector(8 downto 0);

begin
process(a, b, cin, c)
    variable i: integer;
    begin
c(0) <= cin;
    for i in 0 to 7 loop
	s(i) <= a(i) xor b(i) xor c(i);
        c(i+1) <= (a(i) and b(i)) or (b(i) and c(i)) or (a(i) and c(i));
    end loop;
cout<= c(8);
  end process;
end rtl;

