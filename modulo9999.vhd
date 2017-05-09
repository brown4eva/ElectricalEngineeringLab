library IEEE;
use IEEE. STD_LOGIC_1164 .ALL;
use IEEE. STD_LOGIC_ARITH .ALL;
use IEEE. STD_LOGIC_UNSIGNED .ALL;

entity modulo9999 is
	Port ( 
		bcdA : in STD_LOGIC_VECTOR (3 downto 0);
		bcdB : in STD_LOGIC_VECTOR (3 downto 0);
		bcdC : in STD_LOGIC_VECTOR (3 downto 0);
		bcdD : in STD_LOGIC_VECTOR (3 downto 0);
		s : out STD_LOGIC_VECTOR (13 downto 0) := (others => '0'));
end modulo9999;

architecture Behavioral of modulo9999 is
begin
	s <= (bcdA * "01") 				--multiply by 1 
		+ (bcdB * "1010") 			--multiply by 10
		+ (bcdC * "1100100") 		--multiply by 100
		+ (bcdD * "1111101000"); 	--multiply by 1000
end Behavioral;