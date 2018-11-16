library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_media is
end tb_media;

architecture teste of tb_media is

component media is
port (	x, y, z 	: in std_logic_vector(15 downto 0);
		MH, MA 		: out std_logic_vector(15 downto 0));
end component;

signal A, B, C s1, s2: std_logic_vector(15 downto 0);
begin
instancia_media: media port map(x=>A, y=>B, z=> C, s1=>MA, s2=> MH);
A <= x"0", x"3" after 10 ns, x"6" after 40 ns, x"0" after 60 ns;
B <= x"0", x"4" after 10 ns, x"4" after 30 ns, x"1" after 45 ns;
C <= x"0", x"5" after 10 ns, x"8" after 20 ns, x"2" after 50 ns;
end teste;
