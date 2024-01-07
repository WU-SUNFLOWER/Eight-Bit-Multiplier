library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity reg_16bit is
	port(clk: in std_logic;
		 clr: in std_logic;
		 -- 9 bit
		 din: in std_logic_vector(8 downto 0);
		 -- 16 bit
		 q: out std_logic_vector(15 downto 0)
	);
end entity;

architecture bhv of reg_16bit is
	signal data: std_logic_vector(15 downto 0);
begin
	process(clk, clr) begin
		if clr='1' then
			data<=(others=>'0');
		elsif clk'event and clk='1' then
			data(6 downto 0) <= data(7 downto 1);
			data(15 downto 7) <= din;
		end if;
	end process;
	q <= data;
end architecture;