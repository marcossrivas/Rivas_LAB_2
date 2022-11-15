library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is 
	Port (
	a : in std_logic;
	b : in std_logic;
	cin : in std_logic;
	clk : in std_logic;
	z : out std_logic;
	cout : out std_logic );
	
end FULL_ADDER;

ARCHITECTURE behavioral of FULL_ADDER is

		
BEGIN

z <= a xor b xor cin;
cout <= (a and b) or (cin and (a xor b));

end behavioral;

	

	


	
	