library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counter is 
	generic ( tcount : natural := 60;
				 n_bits : natural := 6);

	port( clk : in std_logic;  -- clock : counting at rising edge
			en  : in std_logic;  -- enable : when high counting is on
			ds  : in std_logic;  -- disable : when high counting stops
			rst : in std_logic;  -- reset : when high starts count from 0
			tc	 : out std_logic; -- total count : high when final count is reached 
			output : out std_logic_vector (n_bits -1 downto 0) );	
end counter;

architecture count of counter is 
signal count : std_logic_vector (n_bits -1 downto 0) := (others => '0');
signal cn : std_logic := '0';  -- flag to start and stop counting
begin 
output <= count;
process(clk)
begin
	if rising_edge(clk) then 
		tc <= '0';
		if rst = '1' then 
			count <= (others => '0');			
		elsif count = (tcount-1) then 
			count <= (others => '0');
			tc <= '1';		
		elsif (en = '1' or cn = '1') and (ds = '0') then 
			count <= count + '1';
			cn <= '1';
		elsif ds = '1' then 
	--		output <= count;
			cn <= '0';
			--	if count = (tcount-1) then 
	--		count <= (others => '0');
	--		tc <= '1';
	--	else
	--		count <= count + '1';
		end if;
	
	end if;
	
end process;

end count;
		