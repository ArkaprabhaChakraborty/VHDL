library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is
component demultiplexer is
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
end component;

signal s2,s1,s0,input,a,b,c,d,e1,f,g,h: STD_LOGIC;

begin
-- Connect DUT
DUT: demultiplexer port map(s2,s1,s0,input,a,b,c,d,e1,f,g,h);

process
begin
s2 <= '0';
s1 <= '0';
s0 <= '0';
input <= '1';
wait for 100 ns;

s2 <= '0';
s1 <= '0';
s0 <= '1';
input <= '0';
wait for 100 ns;

s2 <= '0';
s1 <= '1';
s0 <= '0';
input <= '1';
wait for 100 ns;

s2 <= '0';
s1 <= '1';
s0 <= '1';
input <= '0';
wait for 100 ns;

s2 <= '1';
s1 <= '0';
s0 <= '0';
input <= '1';
wait for 100 ns;

s2 <= '1';
s1 <= '0';
s0 <= '1';
input <= '0';
wait for 100 ns;

s2 <= '1';
s1 <= '1';
s0 <= '0';
input <= '1';
wait for 100 ns;

s2 <= '1';
s1 <= '1';
s0 <= '1';
input <= '0';
wait for 100 ns;

wait;
end process;
end tb;
