library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity circuito1 is
	Port ( SW1 : in STD_LOGIC;
			 SW2 : in STD_LOGIC;
			 LED : out STD_LOGIC);
end circuito1;

architecture Behavioral of circuito1 is

begin
LED <= not ( SW1 and SW2); 

end Behavioral;
