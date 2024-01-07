library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder_8bit is
	port(a: in std_logic_vector(7 downto 0);
	     b: in std_logic_vector(7 downto 0);
	     ans: out std_logic_vector(8 downto 0));
end entity;

architecture bhv of adder_8bit is
begin
	ans <= '0'&a + b;
end architecture;