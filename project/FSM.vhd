library ieee;
use IEEE.std_logic_1164.all;

entity FSM is
	port (
		clk, reset, input : in std_logic
	);
end FSM;

architecture Behavioral of FSM is

	type state_type is (s0,s1,s2,s3,s4); 
	signal current_s,next_s: state_type; 

begin
	process (clk,reset)
	begin
		-- reset current state to s0
		if (reset='1') then
			current_s <= s0; 
		elsif (rising_edge(clk)) then
			current_s <= next_s; 
		end if;
	end process;

	process (current_s,input)
	begin
		case current_s is
			when s0 =>      
				if(input ='0') then
					next_s <= s0;
				else
					next_s <= s1;
				end if;   

			when s1 =>   
				if(input ='0') then
					next_s <= s2;
				else
					next_s <= s1;
				end if;

			when s2 =>      
				if(input ='0') then
					next_s <= s0;
				else
					next_s <= s3;
				end if;

			when s3 =>       
				if(input ='0') then
					next_s <= s2;
				else
					next_s <= s4;
				end if;
				
			when s4 =>    
				if(input ='0') then
					next_s <= s2;
				else
					next_s <= s1;
				end if;
		end case;
	end process;

end Behavioral;