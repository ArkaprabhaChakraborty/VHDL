library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is
--empty
end testbench;

architecture tb of testbench is

component cla is
port
(a: in std_logic_vector(7 downto 0);
b: in std_logic_vector(7 downto 0);
cin: in std_logic;
sum: out std_logic_vector(7 downto 0);
cout: out std_logic);
end component;

signal A: std_logic_vector(7 downto 0);
signal B: std_logic_vector(7 downto 0);
signal Cin: std_logic;
signal Sum: std_logic_vector(7 downto 0);
signal Cout: std_logic;

begin
DUT: cla port map(A,B,Cin,Sum,Cout);

process
begin

A <= "11001100";
B <= "00111100";
Cin <= '0';
wait for 1 ns;

--clear inputs
A <= "00000000";
B <= "00000000";
Cin <= '0';
wait;
end process;
end tb;
