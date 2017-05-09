
library ieee;
use ieee.std_logic_1164.all;

entity testFlipFlop8Counter is
end testFlipFlop8Counter;
 
architecture Behavioral of testFlipFlop8Counter is 
 
    component FlipFlop8Counter
    port(
        reset : in  std_logic;
        clk : in  std_logic;
        s : out  std_logic_vector(7 downto 0)
        );
    end component;

    signal reset, clk : std_logic := '0';
    signal s : std_logic_vector(7 downto 0);
	
    constant clk_period : time := 10 ns;
 
begin

    uut: FlipFlop8Counter PORT MAP (reset,clk,s);

	clk_process :process
    begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
    end process;
 
    stimulus: process
    begin		
		wait for clk_period;
        reset <= '0';
		-- watch the counter increases value during this waiting time
        wait for clk_period*20;
		reset <= '1';
        wait;
    end process;

end Behavioral;
