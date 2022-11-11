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

component FFD 
	port(
	D, CLOCK : in std_logic;
	Q : out std_logic);
	end component;
	
signal a1, b1, cin1, cout1, z1 : std_logic;
	
BEGIN

z1 <= a1 xor b1 xor cin1;
cout1 <= (a1 and b1) or (cin1 and (a1 xor b1));

D1: FFD port map (a, clk, a1);
D2: FFD port map (b, clk, b1);
D3: FFD port map (cin, clk, cin1);
D4: FFD port map (cout1, clk, cout);
D5: FFD port map (z1, clk, z);
end behavioral;


-- seguir con inciso 4, ya compilo.

	

	


	
	