
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity testAdd1 is
end testAdd1;
 
architecture Behavioral of testAdd1 is 
    component Add1
    port(
        a,b,cin : in  STD_LOGIC;
        s,cout : out  STD_LOGIC
        );
    end component;
    
    signal a,b,cin,s,cout : STD_LOGIC;

begin
    u_ut: Add1 PORT MAP (a,b,cin,s,cout);

    stimulus: process
    begin		
		a<='0';
		b<='0';
		cin<='0';
		wait for 100 ns;	
		a<='1';
		b<='0';
		cin<='0';
		wait for 100 ns;	
		a<='0';
		b<='1';
		cin<='0';
		wait for 100 ns;	
		a<='0';
		b<='0';
		cin<='1';
		wait for 100 ns;	
		a<='1';
		b<='1';
		cin<='0';
		wait for 100 ns;
		a<='0';
		b<='1';
		cin<='1';
		wait for 100 ns;		
		a<='1';
		b<='1';
		cin<='1';
		wait;
    end process;
end Behavioral;
