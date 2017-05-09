
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity testAdd4 is
end testAdd4;
 
architecture Behavioral of testAdd4 is 
    component Add4
    port(
        a : in  std_logic_vector(3 downto 0);
        b : in  std_logic_vector(3 downto 0);
        cin : in  std_logic;
        s : out  std_logic_vector(3 downto 0);
        cout : out  std_logic
        );
    end component;
    
    signal a : std_logic_vector(3 downto 0) := "0000";
    signal b : std_logic_vector(3 downto 0) := "0000";
    signal cin : std_logic := '0';
    signal s : std_logic_vector(3 downto 0);
    signal cout : std_logic;
 
begin
    uut: Add4 port map (a,b,cin,s,cout);
	
    stimulus: process
    begin		
		wait for 100 ns;	
		a(0) <= '1';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '1';
		b(0) <= '1';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		cin  <= '1';
		wait for 100 ns;
		a(0) <= '1';
		a(1) <= '1';
		a(2) <= '1';
		a(3) <= '1';
		b(0) <= '0';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		cin  <= '1';
		wait for 100 ns;
		a(0) <= '0';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		b(0) <= '1';
		b(1) <= '1';
		b(2) <= '1';
		b(3) <= '1';
		cin  <= '0';
		wait for 100 ns;
		a(0) <= '0';
		a(1) <= '0';
		a(2) <= '1';
		a(3) <= '1';
		b(0) <= '0';
		b(1) <= '1';
		b(2) <= '0';
		b(3) <= '1';
		cin  <= '1';
		wait;
    end process;
end Behavioral;
