-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
--empty
end testbench;

architecture tb of testbench is

component add_sub is
port(A: in std_logic_vector(7 downto 0);
B: in std_logic_vector(7 downto 0);
Cin: in std_logic;
M: in std_logic;
S: out std_logic_vector(7 downto 0);
Cout: out std_logic);
end component;

signal a: std_logic_vector(7 downto 0);
signal b: std_logic_vector(7 downto 0);
signal cin: std_logic;
signal m: std_logic;
signal s: std_logic_vector(7 downto 0);
signal cout: std_logic;

begin

DUT: add_sub port map(a,b,cin,m,s,cout);

process
begin

a <= "00000001";
b <= "10000000";
cin <= '0';
m <= '0';
wait for 1 ns;

a <= "00000001";
b <= "10000000";
cin <= '1';
m <= '1';
wait for 1 ns;

a <= "01010101";
b <= "10101010";
cin <= '1';
m <= '0';
wait for 1 ns;

a <= "10001001";
b <= "10010110";
cin <= '0';
m <= '1';
wait for 1 ns;

a <= "00000000";
b <= "00000000";
cin <= '0';
wait;

end process;
end tb;

