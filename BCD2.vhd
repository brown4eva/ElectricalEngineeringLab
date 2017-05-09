
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD2 is
    port ( 
		bcd : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		output7Segment : out STD_LOGIC_VECTOR (6 downto 0)
	);
end BCD2;

architecture Behavioral of BCD2 is
begin
	process (bcd, clk)
	begin
		if (clk'event and clk='1') then
			case bcd is
				when "0000"=> output7Segment <="0000001";  -- 'display number 0'
				when "0001"=> output7Segment <="1001111";  -- 'display number 1'
				when "0010"=> output7Segment <="0010010";  -- 'display number 2'
				when "0011"=> output7Segment <="0000110";  -- 'display number 3'
				when "0100"=> output7Segment <="1001100";  -- 'display number 4' 
				when "0101"=> output7Segment <="0100100";  -- 'display number 5'
				when "0110"=> output7Segment <="0100000";  -- 'display number 6'
				when "0111"=> output7Segment <="0001111";  -- 'display number 7'
				when "1000"=> output7Segment <="0000000";  -- 'display number 8'
				when "1001"=> output7Segment <="0000100";  -- 'display number 9'
				when "1010"=> output7Segment <="0001000";  -- 'display letter A'
				when "1011"=> output7Segment <="0000011";  -- 'display letter B'
				when "1100"=> output7Segment <="1000110";  -- 'display letter C'
				when "1101"=> output7Segment <="0100001";  -- 'display letter D'
				when "1110"=> output7Segment <="0000110";  -- 'display letter E'
				when "1111"=> output7Segment <="0001110";  -- 'display letter F'
				when others => output7Segment <= "1111111";  -- 'turn off all leds'
			end case;
		end if;
	end process;
end Behavioral;


