
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all ;

entity mux is
	port ( 
		data : in STD_LOGIC_VECTOR (7 downto 0);
		add : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		s : out STD_LOGIC
	);
end mux;

architecture Behavioral of mux is
begin
	process (data, add, clk)
	begin
		if (clk 'event and clk='1') then
			-- output the data value at a specific bit
			-- correspond to value of add chosen
			case add is
			when "0000" => s <= data (0);
			when "0001" => s <= data (1);
			when "0010" => s <= data (2);
			when "0011" => s <= data (3);
			when "0100" => s <= data (4);
			when "0101" => s <= data (5);
			when "0110" => s <= data (6);
			when "0111" => s <= data (7);
			when others => s <= 'Z';
			end case ;
		end if;
	end process;
end Behavioral;

