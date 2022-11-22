-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Nov 20 18:38:04 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY PARTE_C IS 
	PORT
	(
		B3 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		SUM_RES :  IN  STD_LOGIC;
		pin_name8 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC
	);
END PARTE_C;

ARCHITECTURE bdf_type OF PARTE_C IS 

COMPONENT ffd
	PORT(D : IN STD_LOGIC;
		 CLOCK : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT v_flag
	PORT(a3 : IN STD_LOGIC;
		 b3 : IN STD_LOGIC;
		 s3 : IN STD_LOGIC;
		 v : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT full_adder
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 z : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_0 XOR SUM_RES;


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_1 XOR SUM_RES;


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_2 XOR SUM_RES;


b2v_inst14 : ffd
PORT MAP(D => A0,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_18);


b2v_inst15 : ffd
PORT MAP(D => A1,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_20);


b2v_inst16 : ffd
PORT MAP(D => A2,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_23);


b2v_inst17 : ffd
PORT MAP(D => A3,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_35);


b2v_inst18 : ffd
PORT MAP(D => B3,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_36);


b2v_inst19 : ffd
PORT MAP(D => B2,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst20 : ffd
PORT MAP(D => B1,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst21 : ffd
PORT MAP(D => B0,
		 CLOCK => CLK,
		 Q => SYNTHESIZED_WIRE_2);


b2v_inst22 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_31,
		 CLOCK => CLK,
		 Q => S3);


b2v_inst23 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_32,
		 CLOCK => CLK,
		 Q => S2);


b2v_inst24 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_33,
		 CLOCK => CLK,
		 Q => S1);


b2v_inst25 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_34,
		 CLOCK => CLK,
		 Q => S0);


b2v_inst26 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_7,
		 CLOCK => CLK,
		 Q => pin_name8);


b2v_inst27 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_32,
		 CLOCK => CLK,
		 Q => S);


b2v_inst28 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_9,
		 CLOCK => CLK);


b2v_inst29 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_10,
		 CLOCK => CLK,
		 Q => C);


b2v_inst33 : v_flag
PORT MAP(a3 => SYNTHESIZED_WIRE_35,
		 b3 => SYNTHESIZED_WIRE_36,
		 s3 => SYNTHESIZED_WIRE_31,
		 v => SYNTHESIZED_WIRE_9);


SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_34 OR SYNTHESIZED_WIRE_32 OR SYNTHESIZED_WIRE_33 OR SYNTHESIZED_WIRE_31);


b2v_inst5 : full_adder
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_19,
		 cin => SUM_RES,
		 clk => CLK,
		 z => SYNTHESIZED_WIRE_34,
		 cout => SYNTHESIZED_WIRE_22);


b2v_inst6 : full_adder
PORT MAP(a => SYNTHESIZED_WIRE_20,
		 b => SYNTHESIZED_WIRE_21,
		 cin => SYNTHESIZED_WIRE_22,
		 clk => CLK,
		 z => SYNTHESIZED_WIRE_33,
		 cout => SYNTHESIZED_WIRE_25);


b2v_inst7 : full_adder
PORT MAP(a => SYNTHESIZED_WIRE_23,
		 b => SYNTHESIZED_WIRE_24,
		 cin => SYNTHESIZED_WIRE_25,
		 clk => CLK,
		 z => SYNTHESIZED_WIRE_32,
		 cout => SYNTHESIZED_WIRE_29);


SYNTHESIZED_WIRE_10 <= SUM_RES XOR SYNTHESIZED_WIRE_26;


b2v_inst9 : full_adder
PORT MAP(a => SYNTHESIZED_WIRE_35,
		 b => SYNTHESIZED_WIRE_28,
		 cin => SYNTHESIZED_WIRE_29,
		 clk => CLK,
		 z => SYNTHESIZED_WIRE_31,
		 cout => SYNTHESIZED_WIRE_26);


SYNTHESIZED_WIRE_28 <= SYNTHESIZED_WIRE_36 XOR SUM_RES;


END bdf_type;