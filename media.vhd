library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity media is
port (	x, y, z : in std_logic_vector(15 downto 0);
		MH, MA		: out std_logic_vector(15 downto 0));
end media;

architecture comportamental of media is
begin
    MA <= (x/3) + (y/3) + (z/3) ;
	 MH <= 3/(1/X + 1/Y + 1/Z);
end comportamental;
