
library ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.Numeric_Std.all ;
 
entity testMux is
end testMux;
 
architecture Behavioral of testMux is 
    component mux
    port(
        data : in STD_LOGIC_VECTOR (7 downto 0);
		add : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		s : out STD_LOGIC
    );
    end component;
    
    signal data: STD_LOGIC_VECTOR (7 downto 0) := "01101001"; -- predefined the data pattern
	signal add: STD_LOGIC_VECTOR (3 downto 0);
	signal clk: STD_LOGIC;
	signal s: STD_LOGIC;
	
	constant clock_period : time := 10 ns;

begin
    u_ut: mux port map (data,add,clk,s);
	 
	 clockProcess :process
    begin
		clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;

    stimulus: process
    begin		
		-- alter the value of add selector and watch
		-- the output match the predefined data pattern
		wait for clock_period;
		add <= "0000"; 
		
		wait for clock_period ;
		add <= "0001";
		
		wait for clock_period ;
		add <= "0010"; 
		
		wait for clock_period ;
		add <= "0011"; 
		
		wait for clock_period ;
		add <= "0100"; 
		
		wait for clock_period ;
		add <= "0101"; 
		
		wait for clock_period ;
		add <= "0110";
		
		wait for clock_period;
		add <= "0111";
		
		wait;
    end process;
end Behavioral;
