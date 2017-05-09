
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD is
    port ( 
		bcd : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		output7Segment : out STD_LOGIC_VECTOR (6 downto 0)
	);
end BCD;

architecture Behavioral of BCD is
begin
	process (bcd, clk)
	begin
		if (clk'event and clk='1') then
			case bcd is
				when "0000"=> output7Segment <="1111110";  -- 'display a led'
				when "0001"=> output7Segment <="1111101";  -- 'display b led'
				when "0010"=> output7Segment <="1111011";  -- 'display c led'
				when "0011"=> output7Segment <="1110111";  -- 'display d led'
				when "0100"=> output7Segment <="1101111";  -- 'display e led' 
				when "0101"=> output7Segment <="1011111";  -- 'display f led'
				when "0110"=> output7Segment <="0111111";  -- 'display g led'
				when others => output7Segment <= "1111111";  -- 'turn off all leds'
			end case;
		end if;
	end process;
end Behavioral;


