library IEEE;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity FFD is 
PORT( D, CLOCK: in std_logic;
Q: out std_logic);
end FFD;

architecture behavioral of FFD is 
begin 
process(CLOCK)
begin
if(CLOCK='1' AND CLOCK'EVENT) then 
Q <= D;
end if;
end process;
end behavioral;
