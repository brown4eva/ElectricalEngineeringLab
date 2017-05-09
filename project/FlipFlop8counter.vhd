
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;

entity FlipFlop8Counter is
    Port ( 
		reset, clk : in  STD_LOGIC;
        s : out  STD_LOGIC_VECTOR (7 downto 0));
end FlipFlop8Counter;

architecture Behavioral of FlipFlop8Counter is

	signal counter: std_logic_vector (7 downto 0) := "00000000";

begin
	process (clk, reset) begin
		-- reset the counter
        if (reset = '1') then
            counter <= (others=>'0');
        elsif (rising_edge(clk)) then
		-- the counter will increase by 1 
		-- everytime the clock hit maximum value
            counter <= counter + 1;
        end if;
    end process;
	
	-- output the counter
    s <= counter;
	
end Behavioral;

