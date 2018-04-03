library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clock is 
	

	port( CLK : in std_logic;  -- clock : counting at rising edge
--			en  : in std_logic;  -- enable : when high counting is on
			srst : in std_logic;  -- reset : when high starts count from 0
--       tc	 : out std_logic; -- high when final count is reached 
			output : out std_logic_vector (5 downto 0) );	
end clock;

--architecture arch of counter is 

--begin 
	
--	Prescaler : entity work.counter
--		PORT MAP ( clk => CLK,
				--		rst => srst,
			--			en => 1
		--				);
	--


--end arch;
		