library IEEE;
use IEEE. Std_logic_1164 .all;
use IEEE.Numeric_Std .all;

entity testModulo9999 is
end;

architecture Behavioral of testModulo9999 is
	component modulo9999
		Port ( 
			bcdA : in STD_LOGIC_VECTOR (3 downto 0);
			bcdB : in STD_LOGIC_VECTOR (3 downto 0);
			bcdC : in STD_LOGIC_VECTOR (3 downto 0);
			bcdD : in STD_LOGIC_VECTOR (3 downto 0);
			s : out STD_LOGIC_VECTOR (13 downto 0) := (others => '0'));
	end component;

	signal bcdA: STD_LOGIC_VECTOR (3 downto 0);
	signal bcdB: STD_LOGIC_VECTOR (3 downto 0);
	signal bcdC: STD_LOGIC_VECTOR (3 downto 0);
	signal bcdD: STD_LOGIC_VECTOR (3 downto 0);
	signal s: STD_LOGIC_VECTOR (13 downto 0) := (others => '0');
	
	constant clock_period : time := 50 ns;
	
begin
	u_ut: modulo9999 port map (bcdA,bcdB,bcdC,bcdD,s);
	
	stimulus: process
	begin
		bcdA <= x"3"; 
		bcdB <= x"2"; 
		bcdC <= x"4"; 
		bcdD <= x"5";
		wait for clock_period;
		
		bcdA <= x"0"; 
		bcdB <= x"0"; 
		bcdC <= x"9"; 
		bcdD <= x"0";
		wait for clock_period;
		
		bcdA <= x"7"; 
		bcdB <= x"7"; 
		bcdC <= x"7"; 
		bcdD <= x"7";
		wait;
	end process;
end Behavioral;