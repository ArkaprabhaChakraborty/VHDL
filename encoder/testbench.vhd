library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is 
end testbench;
architecture beh of testbench is 
component enco_3x8
port(
  ip: in std_logic_vector(7 downto 0);
  op: out std_logic_vector(2 downto 0));
end component;
  
  signal ip_s:std_logic_vector(7 downto 0);
  signal op_s: std_logic_vector(2 downto 0);
  
  begin 
    dut : enco_3x8 port map(
      ip=>ip_s,
      op=>op_s);
    
   process
    begin
      ip_s<="00000001";
      wait for 1 ps;
      
       ip_s<="00000010";
      wait for 1 ps;
      
       ip_s<="00000100";
      wait for 1 ps;
      
       ip_s<="00001000";
      wait for 1 ps;
      
      ip_s<="00010000";
      wait for 1 ps;
      
       ip_s<="00100000";
      wait for 1 ps;
      
       ip_s<="01000000";
      wait for 1 ps;
      
       ip_s<="10000000";
      wait for 1 ps;
      
     wait;
    end process;
  end beh;

