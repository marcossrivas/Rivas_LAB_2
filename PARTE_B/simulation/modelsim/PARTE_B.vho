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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/15/2022 12:10:49"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FULL_ADDER IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	cin : IN std_logic;
	clk : IN std_logic;
	z : OUT std_logic;
	cout : OUT std_logic
	);
END FULL_ADDER;

-- Design Ports Information
-- z	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FULL_ADDER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \D2|Q~q\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \D2|Q~feeder_combout\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \D1|Q~feeder_combout\ : std_logic;
SIGNAL \D1|Q~q\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \D3|Q~feeder_combout\ : std_logic;
SIGNAL \D3|Q~q\ : std_logic;
SIGNAL \z1~0_combout\ : std_logic;
SIGNAL \D5|Q~q\ : std_logic;
SIGNAL \cout1~0_combout\ : std_logic;
SIGNAL \D4|Q~q\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
ww_clk <= clk;
z <= ww_z;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X94_Y1_N23
\D2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|Q~q\);

-- Location: IOIBUF_X85_Y0_N8
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X94_Y1_N22
\D2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Q~feeder_combout\ = \b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~input_o\,
	combout => \D2|Q~feeder_combout\);

-- Location: IOOBUF_X72_Y0_N9
\z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5|Q~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Q~q\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X94_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X94_Y1_N8
\D1|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Q~feeder_combout\ = \a~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~input_o\,
	combout => \D1|Q~feeder_combout\);

-- Location: FF_X94_Y1_N9
\D1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|Q~q\);

-- Location: IOIBUF_X81_Y0_N22
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X94_Y1_N0
\D3|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Q~feeder_combout\ = \cin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cin~input_o\,
	combout => \D3|Q~feeder_combout\);

-- Location: FF_X94_Y1_N1
\D3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D3|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|Q~q\);

-- Location: LCCOMB_X94_Y1_N16
\z1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z1~0_combout\ = \D2|Q~q\ $ (\D1|Q~q\ $ (\D3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Q~q\,
	datac => \D1|Q~q\,
	datad => \D3|Q~q\,
	combout => \z1~0_combout\);

-- Location: FF_X94_Y1_N17
\D5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \z1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|Q~q\);

-- Location: LCCOMB_X94_Y1_N30
\cout1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cout1~0_combout\ = (\D2|Q~q\ & ((\D1|Q~q\) # (\D3|Q~q\))) # (!\D2|Q~q\ & (\D1|Q~q\ & \D3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Q~q\,
	datac => \D1|Q~q\,
	datad => \D3|Q~q\,
	combout => \cout1~0_combout\);

-- Location: FF_X94_Y1_N31
\D4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cout1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|Q~q\);

ww_z <= \z~output_o\;

ww_cout <= \cout~output_o\;
END structure;


