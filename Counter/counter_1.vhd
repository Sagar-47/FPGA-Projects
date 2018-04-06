library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clock is 
	

	port( CLK : in std_logic;  -- clock : counting at rising edge
			en  : in std_logic;  -- enable : when high counting is on
			srst : in std_logic;  -- reset : when high starts count from 0
         ds : in std_logic; -- high when final count is reached 
			OUTPUT : out std_logic_vector (9 downto 0) );	
end clock;

architecture arch of clock is 
signal tc_count : std_logic := '0';
begin 
	
	Prescaler : entity work.counter
	generic map ( tcount => 60,
					  n_bits => 10)
	PORT MAP ( clk => CLK,
					rst => srst,
					en => en,
					ds => ds,
					tc => tc_count,
					output => OUTPUT);
					
end arch;
	


--end arch;
		