library IEEE; 
use ieee.std_logic_1164.all;

entity FullAdder is 
port ( a,b,c,d : in std_logic;
sum0, sum1, carry, Ca, Y : out std_logic);
end FullAdder;

architecture adder of FullAdder is 
signal buffCa : std_logic;
begin

sum0 <= a xor b;
sum1 <= c xor d xor buffCa;
buffCa <= (a and b);
carry <= ((c xor d) and buffca ) or (c and d);
Ca <= buffCa;
process(a, b, buffCa)
    begin
    if(buffCa = '1') then
        Y <= Y+1;
    else
        Y <= Y-1;
    end if;
    end process;
end adder; 