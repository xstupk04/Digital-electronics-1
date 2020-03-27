library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity traffic is
 port(
	clk: in std_logic;
	reset: in std_logic;
	lights: out std_logic_vector(6-1 downto 0)
	);
	
	end traffic; -- entity
	

architecture traffic of traffic is
	
	 type state_type is (green_red,yellow_red,red_red,red_green,red_yellow,red_red2);
	 signal state: state_type;
    signal count : unsigned(3 downto 0);
    constant SEC5: unsigned(3 downto 0) := "1111"; -- 15 Hertz
    constant SEC1: unsigned(3 downto 0) := "0011"; -- 3 Hertz

    begin process(clk, reset)
	 begin
		if rising_edge(clk) then 
			if reset = '0' then 
				state <= green_red; 
				count <= (others => '0'); 
				
			else 
				case state is
-----------------Green/RED-------------------------			
					when green_red => 
						if count < SEC5 then 
						state <= green_red; 
						count <= count + 1;  
						else
							state <= yellow_red; 
							count <= (others => '0');
						end if;	
-----------------Yellow/Red-------------------------			
					when yellow_red => 
						if count < SEC1 then 
						state <= yellow_red; 
						count <= count + 1;  
						else
							state <= red_red; 
							count <= (others => '0');
						end if;

-----------------Red/Red-------------------------			
					when red_red => 
						if count < SEC1 then 
						state <= red_red; 
						count <= count + 1;  
						else
							state <= red_green; 
							count <= (others => '0');
						end if;	
						
-----------------Red/Green-------------------------			
					when red_green => 
						if count < SEC5 then 
						state <= red_green;
						count <= count + 1;  
						else
							state <= red_yellow; 
							count <= (others => '0');
						end if;
						
-----------------Red/Red-------------------------			
					when red_yellow => 
						if count < SEC1 then 
						state <= red_yellow; 
						count <= count + 1;
						else
							state <= red_red2; 
							count <= (others => '0');
						end if;

-----------------Red/Red-------------------------			
					when red_red2 => 
						if count < SEC1 then 
						state <= red_red2; 
						count <= count + 1;  
						else
							state <= green_red; 
							count <= (others => '0');
						end if;
------------------------others options-----------------------
				    when others =>
							state <= green_red; -- starting state
					end case;
				end if; 
			end if;				
end process;

led_out: process(state)
	begin
	case state is
		when green_red => lights <=  "100001";
		when yellow_red => lights <= "010001";
		when red_red => lights <=    "001001";
		when red_green => lights <=  "001100";
		when red_yellow => lights <= "001010";
		when red_red2 => lights <=   "001001";
		when others => lights <=     "100001";
	end case;
	end process;
end traffic;