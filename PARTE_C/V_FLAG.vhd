library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity V_FLAG is 
	Port (
	a3 : in std_logic;
	b3 : in std_logic;
	s3 : in std_logic;
	v : out std_logic
	);
	
end V_FLAG;

ARCHITECTURE behavioral of V_FLAG is

		
BEGIN

v <= ((not a3) and (not b3) and s3) or (a3 and b3 and (not s3)) ;


end behavioral;

	