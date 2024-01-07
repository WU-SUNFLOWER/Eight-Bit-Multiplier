library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity andarith is
	port(abin: in std_logic;
	     din: in std_logic_vector(7 downto 0);
	     dout: out std_logic_vector(7 downto 0));
end entity;

architecture bhv of andarith is
begin
	process(abin, din) begin
		for i in 0 to 7 loop
			dout(i) <= din(i) and abin;
		end loop;
	end process;
end architecture;