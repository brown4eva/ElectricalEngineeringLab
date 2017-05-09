library IEEE;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.Numeric_Std.ALL ;

entity testAnd3 is
end testAnd3;

architecture behavior of testAnd3 is

	component AND3
	Port ( 
		a,b,c : in STD_LOGIC;
		s : out STD_LOGIC);
	end component;

	signal a,b,c,s: STD_LOGIC;

begin
	u_ut: AND3 port map (a,b,c,s);
		
	stimulus: process
	begin
		a<='0';
		b<='0';
		c<='0';
		wait for 100 ns;
		a<='1';
		b<='0';
		c<='0';
		wait for 100 ns;
		a<='0';
		b<='1';
		c<='0';
		wait for 100 ns;
		a<='0';
		b<='0';
		c<='1';
		wait for 100 ns;
		a<='1';
		b<='0';
		c<='1';
		wait for 100 ns;
		a<='1';
		b<='1';
		c<='0';
		wait for 100 ns;
		a<='0';
		b<='1';
		c<='1';
		wait for 100 ns;
		a<='1';
		b<='1';
		c<='1';
		wait;
	end process;
end architecture;