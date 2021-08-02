-- Testbench for RESTORING
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is
component restoring is
port(
  m: in STD_LOGIC_VECTOR (7 downto 0);
  q: in STD_LOGIC_VECTOR (7 downto 0);
  q1: out STD_LOGIC_VECTOR (7 downto 0);
  r: out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal m,q: STD_LOGIC_VECTOR (7 downto 0);
signal q1: STD_LOGIC_VECTOR (7 downto 0);
signal r: STD_LOGIC_VECTOR (7 downto 0);

BEGIN
-- Connect DUT
DUT: restoring port map(m,q,q1,r);

process
begin
q <= "10001000";
m <= "10001100";
wait for 100 ns;

wait;
end process;
end tb;
