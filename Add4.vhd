
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Add4 is
	Port ( 
		a : in  STD_LOGIC_VECTOR (3 downto 0);
		b : in  STD_LOGIC_VECTOR (3 downto 0);
		cin : in  STD_LOGIC;
		s : out  STD_LOGIC_VECTOR (3 downto 0);
		cout : out  STD_LOGIC);
end Add4;

architecture Behavioral of Add4 is

	component Add1 is
	port (
		a,b,cin:  in  STD_LOGIC;
		s,cout:  out STD_LOGIC
		);
	end component;

    signal i_carry: std_logic_vector(2 downto 0);
  
begin
	-- i_carry is the cout of the first adder and will become the cin of the 
	-- next adder, keep doing this till the end to achieve 4 bit adder system
	adder1: Add1
	port map (a(0),b(0),cin,s(0),i_carry(0));
	adder2: Add1
	port map (a(1),b(1),i_carry(0),s(1),i_carry(1));
	adder3: Add1
	port map (a(2),b(2),i_carry(1),s(2),i_carry(2));
	adder4: Add1
	port map (a(3),b(3),i_carry(2),s(3),cout);


end Behavioral;

