library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity demultiplexer is
port(
	s2 : in STD_LOGIC;
	s1 : in STD_LOGIC;
	s0 : in STD_LOGIC;
	input : in STD_LOGIC;
	a : out STD_LOGIC;
	b : out STD_LOGIC;
    c : out STD_LOGIC;
	d : out STD_LOGIC;
	e1 : out STD_LOGIC;
    f : out STD_LOGIC;
	g : out STD_LOGIC;
	h : out STD_LOGIC);
end demultiplexer;

architecture Behavioral of demultiplexer is

begin
process( s2,s1,s0,input)
begin
if s2 = '0' and s1 = '0' and s0 = '0' and input = '1' then
a <= '1';
b <= '0';
c <= '0';
d <= '0';
e1 <= '0';
f <= '0';
g <= '0';
h <= '0';
elsif s2 = '0' and s1 = '0' and s0 = '1' and input = '0' then
a <= '0';
b <= '0';
c <= '0';
d <= '0';
e1 <= '0';
f <= '0';
g <= '0';
h <= '0';
elsif s2 = '0' and s1 = '1' and s0 = '0' and input = '1' then
a <= '0';
b <= '0';
c <= '1';
d <= '0';
e1 <= '0';
f <= '0';
g <= '0';
h <= '0';
elsif s2 = '0' and s1 = '1' and s0 = '1' and input = '0' then
a <= '0';
b <= '0';
c <= '0';
d <= '0';
e1 <= '0';
f <= '0';
g <= '0';
h <= '0';
elsif s2 = '1' and s1 = '0' and s0 = '0' and input = '1' then
a <= '0';
b <= '0';
c <= '0';
d <= '0';
e1 <= '1';
f <= '0';
g <= '0';
h <= '0';
elsif s2 = '1' and s1 = '0' and s0 = '1' and input = '0' then
a <= '0';
b <= '0';
c <= '0';
d <= '0';
e1 <= '0';
f <= '0';
g <= '0';
h <= '0';
elsif s2 = '1' and s1 = '1' and s0 = '0' and input = '1' then
a <= '0';
b <= '0';
c <= '0';
d <= '0';
e1 <= '0';
f <= '0';
g <= '1';
h <= '0';
elsif s2 = '1' and s1 = '1' and s0 = '1' and input = '0' then
a <= '0';
b <= '0';
c <= '0';
d <= '0';
e1 <= '0';
f <= '0';
g <= '0';
h <= '0';
end if;
end process;
end Behavioral;

