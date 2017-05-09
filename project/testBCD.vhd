
library ieee;
use ieee.std_logic_1164.all;

entity testBCD is
end testBCD;
 
architecture Behavioral of testBCD is 
 
    component BCD
    port(
        bcd : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		output7Segment : out STD_LOGIC_VECTOR (6 downto 0)
    );
    end component;

	signal bcdcode: STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal clk: STD_LOGIC;
	signal output7Segment: STD_LOGIC_VECTOR (6 downto 0);
	
	constant clock_period : time := 50 ns;
 
begin
	u_ut: BCD port map (bcdcode, clk, output7Segment);
	clockprocess :process
	begin
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
	end process;
 
	stimulus: process
	begin		
		wait for clock_period ;
		bcdcode <= "0000" ; -- 'display a led'
		wait for clock_period ;
		bcdcode <= "0001" ; -- 'display b led'
		wait for clock_period ;
		bcdcode <= "0010" ; -- 'display c led'
		wait for clock_period ;
		bcdcode <= "0011" ; -- 'display d led'
		wait for clock_period ;
		bcdcode <= "0100" ; -- 'display e led'
		wait for clock_period ;
		bcdcode <= "0101" ; -- 'display f led'
		wait for clock_period ;
		bcdcode <= "0110" ; -- 'display g led'
		wait;
	end process;

end Behavioral;
