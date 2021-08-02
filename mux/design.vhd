library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mux is
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
end mux;

architecture rtl of mux is
begin
  process(s0,s1,s2,a,b,c,d,e1,f,g,h)
  begin
  if s0 = '0' and s1 = '0' and s2 = '0' then
  o <= a;

  elsif s0 = '0' and s1 = '0' and s2 = '1' then
  o <= b;
  
  elsif s0 = '0' and s1 = '1' and s2 = '0' then
  o <= c;
  
  elsif s0 = '0' and s1 = '1' and s2 = '1' then
  o <= d;
  
  elsif s0 = '1' and s1 = '0' and s2 = '0' then
  o <= e1;
  
  elsif s0 = '1' and s1 = '0' and s2 = '1' then
  o <= f;
  
  elsif s0 = '1' and s1 = '1' and s2 = '0' then
  o <= g;
  
  elsif s0= '1' and s1 = '1' and s2 = '1' then
  o <= h;
  
  end if;
  
  end process;
end rtl;
