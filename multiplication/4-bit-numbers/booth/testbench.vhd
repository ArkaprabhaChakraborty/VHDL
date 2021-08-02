-- Testbench for BOOTH'S
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is
component booths1 is
port(
  m : in STD_LOGIC_VECTOR (3 downto 0);
  q : in STD_LOGIC_VECTOR (3 downto 0);
  p : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal m: STD_LOGIC_VECTOR (3 downto 0);
signal q: STD_LOGIC_VECTOR (3 downto 0);
signal p: STD_LOGIC_VECTOR (7 downto 0);

BEGIN
-- Connect DUT
DUT: booths1 port map(m,q,p);

process
begin
m <= "1000";
q <= "0011";
wait for 100 ns;

wait;
end process;
end tb;

