library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component rca is
port(
  a: in std_logic_vector (7 downto 0);
  b: in std_logic_vector (7 downto 0);
cin: in std_logic;
cout: out std_logic;
  s: out std_logic_vector (7 downto 0));
end component;

signal A: std_logic_vector (7 downto 0);
signal B: std_logic_vector (7 downto 0);
signal CIN: std_logic;
signal S: std_logic_vector (7 downto 0);
signal COUT: std_logic;

begin

  -- Connect DUT
  DUT: rca port map(A, B, CIN, COUT, S);

  process
  begin
    A <= "11001001";
    B <= "00110011";
    CIN <= '0';
    wait for 1 ns;

    -- Clear inputs
    A <= "00000000";
    B <= "00000000";
    CIN <= '0';

    wait;
  end process;
end tb;

