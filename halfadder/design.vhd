library IEEE;
use IEEE.std_logic_1164.all;

entity HA_gate is
port(
  a: in std_logic;
  b: in std_logic;
  
  s: out std_logic;
  c: out std_logic);
end HA_gate;

architecture rtl of HA_gate is
begin
  process(a,b) is
  begin
    c <= a and b;
    s <= a xor b;
  end process;

end rtl;

