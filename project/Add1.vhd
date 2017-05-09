
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Add1 is
    Port ( 
		a,b,cin : in  STD_LOGIC;
        s,cout : out  STD_LOGIC
		  );
end Add1;

architecture Behavioral of Add1 is
begin
	process(a,b,cin)
	begin
		s <= a xor b xor cin;
		cout <= (a and b) or (a and cin) or (b and cin);
	end process;
end Behavioral;

