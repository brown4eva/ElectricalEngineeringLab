
library ieee;
use ieee.std_logic_1164.all;

entity testBCD2 is
end testBCD2;
 
architecture Behavioral of testBCD2 is 
 
    component BCD2
    port(
        bcd : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		output7Segment : out STD_LOGIC_VECTOR (6 downto 0)
    );
    end component;

	signal bcd: STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal clk: STD_LOGIC;
	signal output7Segment: STD_LOGIC_VECTOR (6 downto 0);
	
	constant clock_period : time := 50 ns;
 
begin
	u_ut: BCD2 port map (bcd, clk, output7Segment);
	clk_process :process
	begin
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
	end process;
 
	stimulus: process
	begin		
		wait for clock_period ;
		bcd <= "0000" ; -- 'display number 0'
		wait for clock_period ;
		bcd <= "0001" ; -- 'display number 1'
		wait for clock_period ;
		bcd <= "0010" ; -- 'display number 2'
		wait for clock_period ;
		bcd <= "0011" ; -- 'display number 3'
		wait for clock_period ;
		bcd <= "0100" ; -- 'display number 4'
		wait for clock_period ;
		bcd <= "0101" ; -- 'display number 5'
		wait for clock_period ;
		bcd <= "0110" ; -- 'display number 6'
		wait for clock_period ;
		bcd <= "0111" ; -- 'display number 7'
		wait for clock_period ;
		bcd <= "1000" ; -- 'display number 8'
		wait for clock_period ;
		bcd <= "1001" ; -- 'display number 9'
		wait for clock_period ;
		bcd <= "1010" ; -- 'display number A'
		wait for clock_period ;
		bcd <= "1011" ; -- 'display number B'
		wait for clock_period ;
		bcd <= "1100" ; -- 'display number C'
		wait for clock_period ;
		bcd <= "1101" ; -- 'display number D'
		wait for clock_period ;
		bcd <= "1110" ; -- 'display number E'
		wait for clock_period ;
		bcd <= "1111" ; -- 'display number F'
		wait;
	end process;

end Behavioral;
