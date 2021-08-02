library IEEE;
use IEEE.std_logic_1164.all;
 entity testbench is
-- empty
end testbench; 
architecture tb of testbench is
-- DUT component
component Rca16 is
port(
  a: in STD_LOGIC_VECTOR (15 downto 0);
  b: in STD_LOGIC_VECTOR (15 downto 0);
  cin: in STD_LOGIC;
  cout: out STD_LOGIC;
  Sum: out STD_LOGIC_VECTOR (15 downto 0)
    
  );
end component;

signal A: STD_LOGIC_VECTOR (15 downto 0);
signal B: STD_LOGIC_VECTOR (15 downto 0);
signal Cin: STD_LOGIC;
signal S: STD_LOGIC_VECTOR (15 downto 0);
signal Cout: STD_LOGIC;
BEGIN

  -- Connect DUT
DUT: Rca16 port map(A,B,Cin,Cout,S);

process
begin
A <= "0011001110011001";
B <= "0110011011001100";
Cin <= '1';
wait for 5 ns;
   
A <= "0011001110011001";
B <= "0110011011001100";
Cin <= '0';
wait for 5 ns;
wait;
end process;
end tb;

