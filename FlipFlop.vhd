
library ieee;
use ieee.std_logic_1164.all;

entity flipflop is
	port( 
		D, clk : in STD_LOGIC;
		q : out STD_LOGIC);
end flipflop;

architecture Behavioral of flipflop is
begin
	process(clk)
	begin
		-- if the clock is at rising edge (hit maximum)
		-- assign input value to the output
		if (clk='1' and clk'event) then
			q <= D ;
		end if;
	end process;
end Behavioral; 



