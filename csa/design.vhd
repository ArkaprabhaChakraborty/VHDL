library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CarrySaveAdder is
    port
    (
        x    : in std_logic_vector(3 downto 0);
        y    : in std_logic_vector(3 downto 0);
        z    : in std_logic_vector(3 downto 0);
        cin  : in std_logic;
        sb   : inout std_logic_vector(4 downto 0);
        sum  : out std_logic_vector(4 downto 0);
        cs   : inout std_logic_vector(4 downto 0);
        cout : out std_logic
    );
end CarrySaveAdder;

architecture behave of CarrySaveAdder is
    signal c : std_logic_vector(5 downto 0);
    begin
        process(x, y, z, sb, cs, c)
        variable i : integer;
        begin
            sb(4) <= '0';
            cs(0) <= '0';
            for i in 0 to 3 loop
                sb(i)   <= x(i) xor y(i) xor z(i);
                cs(i+1) <= (x(i) and y(i)) or (x(i) and z(i)) or (y(i) and z(i));
            end loop;
            c(0) <= cin;
            for i in 0 to 4 loop
                sum(i) <= sb(i) xor cs(i) xor c(i);
                c(i+1) <= (sb(i) and cs(i)) or (sb(i) and c(i)) or (cs(i) and c(i));
            end loop;
            cout <= c(5);
        end process;
end behave;
