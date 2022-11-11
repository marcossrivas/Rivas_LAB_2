library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity circuito1_testbench is

end circuito1_testbench;


ARCHITECTURE Behavior OF circuito1_testbench IS

    COMPONENT circuito1 --component declaration 
    PORT(
        SW1 : in STD_LOGIC; 
        SW2 : in STD_LOGIC;
         LED : out STD_LOGIC 
         );

    END COMPONENT;

--Inputs
 signal SW1 : std_logic := '0'; 
 signal SW2 : std_logic := '0'; 
 --Outputs 
 signal LED : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT) 
    uut: circuito1 PORT MAP (
        SW1 => SW1,
         SW2 => SW2,
          LED => LED
    );

    stim_proc: process -- Stimulus process 
    begin
    --stimulus
    SW1 <= '0'; SW2 <= '0'; wait for 10ns;
     SW1 <= '0'; SW2 <= '1'; wait for 10ns;
    SW1 <= '1'; SW2 <= '0'; wait for 10ns;
     SW1 <= '1'; SW2 <= '1'; wait for 10ns;

        wait;
    end process; 
 END;