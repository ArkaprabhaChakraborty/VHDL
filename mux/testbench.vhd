library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component mux is
port(
  s0: in std_logic;
  s1: in std_logic;
  s2: in std_logic;
  a : in std_logic;
  b : in std_logic;
  c : in std_logic;
  d : in std_logic;
  e1 : in std_logic;
  f : in std_logic;
  g : in std_logic;
  h : in std_logic;
  o : out std_logic);
end component;

signal s0,s1,s2,a,b,c,d,e1,f,g,h,o: std_logic;

begin

  -- Connect DUT
  DUT: mux port map(s0,s1,s2,a,b,c,d,e1,f,g,h,o);

  process
  begin
    s2 <= '0';
	s1 <= '0';
	s0 <= '0';
	a <= '1';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '1';
	h <= '0';
	wait for 100 ns;
	
    
	s2 <= '0';
	s1 <= '0';
	s0 <= '1';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '1';
	h <= '0';
	wait for 100 ns;

	s2 <= '0';
	s1 <= '1';
	s0 <= '0';
	a <= '0';
	b <= '0';
	c <= '1';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '1';
	h <= '0';
	wait for 100 ns;

	s2 <= '0';
	s1 <= '1';
	s0 <= '1';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '1';
	e1 <= '0';
	f <= '0';
	g <= '1';
	h <= '0';
	wait for 100 ns;

	s2 <= '1';
	s1 <= '0';
	s0 <= '0';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '1';
	h <= '0';
	wait for 100 ns;

	s2 <= '1';
	s1 <= '0';
	s0 <= '1';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '1';
	g <= '1';
	h <= '0';
	wait for 100 ns;

	s2 <= '1';
	s1 <= '1';
	s0 <= '0';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '0';
	h <= '0';
	wait for 100 ns;

	s2 <= '1';
	s1 <= '1';
	s0 <= '1';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '1';
	h <= '1';
	wait for 100 ns;
    
    -- Clear inputs
    s2 <= '0';
	s1 <= '0';
	s0 <= '0';
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	e1 <= '0';
	f <= '0';
	g <= '0';
	h <= '0';

    wait;
  end process;
end tb;

