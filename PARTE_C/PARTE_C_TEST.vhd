LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FULL_ADDER_TEST is
END FULL_ADDER_TEST;

ARCHITECTURE behavior of adder_test is

	COMPONENT FULL_ADDER 
	PORT(
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		clk : in STD_LOGIC;
		s : out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
		);
	END COMPONENT;
	
	
--inputs

signal a : std_logic_vector := "0" ; "0" ; "0" ;  "0";
signal b : std_logic := "0" "0" "0" "0";
signal cin : std_logic := '0';
signal clk : std_logic := '0';

--output

signal s : std_logic;
signal cout : std_logic;

--clk period

constant clock_period : time :=20ns;


BEGIN 

	uut: FULL_ADDER PORT MAP (
		 a => a,
		 b => b,
		 cin => cin,
		 clk => clk,
		 s => s,
		 cout =>cout
		 );
		 
		 
--clock process

clock_process:process
	begin 
		clk<='0';
		wait for clock_period/2;
		clk<='1';
		wait for clock_period/2;
end process;

	stim_proc: process
	begin
		a <= "0" "0" "1" "0" ; b <= "0" "0" "0" "1"; cin <= '0'; wait for 30ns;
		
		wait;
	end process;
END;

