-- Simple NAND gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate is
port(
  a: in std_logic;
  b: in std_logic;
  q: out std_logic);
end nand_gate;

architecture rtl of nand_gate is
begin
  process(a, b) is
  begin
    q <= a nand b;
  end process;
end rtl;
