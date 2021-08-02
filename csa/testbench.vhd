library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is
component CarrySaveAdder is
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
end component;

signal X    : std_logic_vector(3 downto 0);
signal Y    : std_logic_vector(3 downto 0);
signal Z    : std_logic_vector(3 downto 0);
signal CIN  : std_logic;
signal SB   : std_logic_vector(4 downto 0);
signal SUM  : std_logic_vector(4 downto 0);
signal CS   : std_logic_vector(4 downto 0);
signal COUT : std_logic;

begin
    DUT: CarrySaveAdder port map(X, Y, Z, CIN, SB, SUM, CS, COUT);
    process begin

        X <= "0110";
        Y <= "1100";
        Z <= "0001";
        CIN <= '0';
        wait for 10 ns;

        X <= "1111";
        Y <= "1111";
        Z <= "1111";
        CIN <= '1';
        wait for 10 ns;

        X <= "1111";
        Y <= "1111";
        Z <= "1111";
        CIN <= '0';
        wait for 10 ns;

        X <= "0010";
        Y <= "1000";
        Z <= "0001";
        CIN <= '0';
        wait for 10 ns;

        X <= "1110";
        Y <= "1100";
        Z <= "0011";
        CIN <= '1';
        wait for 10 ns;

        assert false report "All Tests Performed, Results Not Noted" severity note;
        wait;

    end process;
end tb;
