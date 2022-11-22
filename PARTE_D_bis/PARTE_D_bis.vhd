-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity PARTE_D_bis is

	port(
		clk		 : in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of PARTE_D_bis is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3,s4,s5,s6);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
					if input = '1' then
						state <= s1;
					else
						state <= s4;
					end if;
				when s1=>
					if input = '1' then
						state <= s2;
					else
						state <= s2;
					end if;
				when s2=>
					if input = '1' then
						state <= s3;
					else
						state <= s3;
					end if;
				when s3 =>
					if input = '1' then
						state <= s0;
					else
						state <= s0;
					end if;
				when s4=>
					if input = '1' then
						state <= s5;
					else
						state <= s5;
					end if;
				when s5=>
					if input = '1' then
						state <= s3;
					else
						state <= s6;
					end if;
				when s6=>
					if input = '1' then
						state <= s0;
					else
						state <= s0;
					end if;
				
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when s0 =>
				output <= "0000";
			when s1 =>
				output <= "1000";
			when s2 =>
				output <= "1100";
			when s3 =>
				output <= "1110";
			when s4 =>
				output <= "0110";
			when s5 =>
				output <= "1111";
			when s6 =>
				output <= "1001";	
		end case;
	end process;

end rtl;
