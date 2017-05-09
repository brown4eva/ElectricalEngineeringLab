library IEEE;
use IEEE. Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity testFSM is
end testFSM;

architecture Behavioral of testFSM is
	component FSM
		port ( 
			clk, reset, input : in STD_LOGIC
	);
	end component;
	
	signal clk, reset, input: STD_LOGIC;
	
	constant clock_period : time := 20 ns;
	
begin

	u_ut: FSM port map (clk, reset, input);
	
	 clockProcess :process
    begin
		clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;
	
	stimulus: process
	begin
		
		wait for clock_period;
		reset <= '0';
		input <= '0';
		
		wait for clock_period;
		reset <= '1';
		input <= '1';
		
		wait for clock_period*2;
		input <= '0';
		
		wait for clock_period*3;
		input <= '1';
		
		wait ;
	end process;
end Behavioral;