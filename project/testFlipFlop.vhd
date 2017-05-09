
library ieee;
use ieee.std_logic_1164.all;
 
entity testFlipFlop is
end testFlipFlop;
 
architecture Behavioral of testFlipFlop is 

    component FlipFlop
    port(
        D, clk: in  std_logic;
        q : out  std_logic
        );
    end component;
   
    signal D, clk, q : std_logic := '0';

    constant clk_period : time := 50 ns;
 
begin
    uut: FlipFlop port map (D,clk,q);

    clockProcess :process
    begin
		clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
 
    stimulus: process
    begin		
		wait for 12 ns;	
		D <= '1';
		wait for 58 ns;	
		D <= '0';
		wait for 200 ns;	
		D <= '1';
		wait for 220 ns;	
		D <= '0';
		wait for 280 ns;	
		D <= '1';
		wait for 1000 ns;	
		D <= '0';
		wait;
	end process;
end Behavioral;

