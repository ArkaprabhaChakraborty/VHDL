library IEEE;
use IEEE.std_logic_1164.all;

entity enco_3x8 is 
port(
  ip: in std_logic_vector(7 downto 0);
  op: out std_logic_vector(2 downto 0));
end enco_3x8;  
  

architecture beh of enco_3x8 is 
begin
  
enco :
  process(ip)
  variable temp: std_logic_vector(2 downto 0);
  begin 
    case ip is
      when "00000001"=>temp:="000";
      when "00000010"=>temp:="001";
      when "00000100"=>temp:="010";
      when "00001000"=>temp:="011";
      when "00010000"=>temp:="100";
      when "00100000"=>temp:="101";
      when "01000000"=>temp:="110";
      when "10000000"=>temp:="111";
      when others=> temp:="XXX";
      
	end case;
	op<=temp;

end process enco;    
end beh;

