
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shifter8 is
    Port ( 
		D, clk : in  STD_LOGIC;
        s : out  STD_LOGIC_VECTOR (7 downto 0));
end Shifter8;

architecture Behavioral of Shifter8 is

	signal shifter : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

	component FlipFlop is
	port (
		D, clk:  in  STD_LOGIC;
		q:  out STD_LOGIC
	);
	end component FlipFlop;

begin
	
	-- the first input "d" will be init by 1 in simulus and this 1 will
	-- be shift to the left side until the last bit of the shifter
	FF0: FlipFlop
	port map (D, clk, shifter(0));

	FF1: FlipFlop
	port map (shifter(0), clk, shifter(1));

	FF2: FlipFlop
	port map (shifter(1), clk, shifter(2));

	FF3: FlipFlop
	port map (shifter(2), clk, shifter(3));

	FF4: FlipFlop
	port map (shifter(3), clk, shifter(4));

	FF5: FlipFlop
	port map (shifter(4), clk, shifter(5));

	FF6: FlipFlop
	port map (shifter(5), clk, shifter(6));
	
	FF7: FlipFlop
	port map (shifter(6), clk, shifter(7));


	-- output the shifter
	s <= shifter;

end Behavioral;

