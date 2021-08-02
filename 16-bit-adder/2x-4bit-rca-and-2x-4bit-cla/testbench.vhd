-- Testbench
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

component add_16_from_4 is
Port(a : in STD_LOGIC_VECTOR (15 downto 0);
b : in STD_LOGIC_VECTOR (15 downto 0);
sum : out STD_LOGIC_VECTOR (15 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC);
end component;

signal a: STD_LOGIC_VECTOR (15 downto 0);
signal b: STD_LOGIC_VECTOR (15 downto 0);
signal sum: STD_LOGIC_VECTOR (15 downto 0);
signal cin: STD_LOGIC;
signal cout: STD_LOGIC;

BEGIN
-- Connect DUT
DUT: add_16_from_4 port map(a,b,sum,cin,cout);

process
begin
A <= "0010101100001111";
B <= "0001011100011101";
cin <= '1';
wait for 100 ns;

A <= "1010010110100101";
B <= "1100001100111100";
cin <= '1';
wait for 100 ns;

wait;
end process;
end tb;
