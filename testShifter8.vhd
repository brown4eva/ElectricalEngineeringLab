
library ieee;
use ieee.std_logic_1164.all;
 
entity testShifter8 is
end testShifter8;
 
architecture Behavioral of testShifter8 is 
 
    component Shifter8
    port(
        D, clk : IN  std_logic;
        s : OUT  std_logic_vector(7 downto 0)
    );
    end component;

	signal D,clk : std_logic := '0';
	signal s : std_logic_vector(7 downto 0); 

	constant clk_period : time := 10 ns ;
 
begin 
 
	u_ut: Shifter8 port map (D,clk,s);

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
		D <= '1';
		wait;
    end process;

end Behavioral;
