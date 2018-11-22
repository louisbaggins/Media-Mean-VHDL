library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity media is
port (	x, y, z : in std_logic_vector(15 downto 0);
		MH, MA		: out std_logic_vector(15 downto 0));
end media;

architecture comportamental of media is
begin
    MA <= conv_std_logic_vector((conv_integer(x)/3) + (conv_integer(y)/3) + (conv_integer(z)/3), 16);
    MH <= conv_std_logic_vector(3/(1/conv_integer(x) + 1/conv_integer(y) + 1/conv_integer(z), 16);
end comportamental;
