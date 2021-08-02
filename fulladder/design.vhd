library IEEE;
use IEEE.std_logic_1164.all;

entity HA_gate is
port(
  a: in std_logic;
  b: in std_logic;
  cin: in std_logic;
  sout: out std_logic;
  cout: out std_logic);
end HA_gate;

architecture rtl of HA_gate is
begin
  process(a,b,cin) is
  begin
    
    sout <= a xor b xor cin;
    cout <= (a and b) or (b and cin) or (a and cin);
  end process;

end rtl;
