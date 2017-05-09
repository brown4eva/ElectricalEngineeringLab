
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And3 is
    Port ( 
		a,b,c : in  STD_LOGIC;
        s : out  STD_LOGIC);
end And3;

architecture Behavioral of And3 is
begin
	process(a,b,c)
	begin
		s <= (a and b and c); 
	end process;
end Behavioral;

