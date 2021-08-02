-- Simple XNOR gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity xnor_gate is
port(
  a: in std_logic;
  b: in std_logic;
  q: out std_logic);
end xnor_gate;

architecture rtl of xnor_gate is
begin
  process(a, b) is
  begin
    q <= a xnor b;
  end process;
end rtl;
