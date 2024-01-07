library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sreg_8bit is
	port(clk: in std_logic; 
	     load: in std_logic; 
	     din: in std_logic_vector(7 downto 0);
	     qb: out std_logic);
end entity;

architecture bhv of sreg_8bit is
	signal data: std_logic_vector(7 downto 0);
begin
	process(clk, load) begin
		if load='1' then
			data <= din;
		elsif clk'event and clk='1' then
			data(6 downto 0) <= data(7 downto 1);
		end if;
	end process;
	qb <= data(0);
end architecture;