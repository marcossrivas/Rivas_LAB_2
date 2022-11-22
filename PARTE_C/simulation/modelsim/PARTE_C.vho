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

-- DATE "11/20/2022 18:35:04"

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

ENTITY 	PARTE_C IS
    PORT (
	pin_name8 : OUT std_logic;
	A0 : IN std_logic;
	CLK : IN std_logic;
	B0 : IN std_logic;
	SUM_RES : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic;
	C : OUT std_logic;
	V : OUT std_logic;
	S : OUT std_logic
	);
END PARTE_C;

-- Design Ports Information
-- pin_name8	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM_RES	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PARTE_C IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name8 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_SUM_RES : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \inst15|Q~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst15|Q~feeder_combout\ : std_logic;
SIGNAL \pin_name8~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst19|Q~feeder_combout\ : std_logic;
SIGNAL \inst19|Q~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst16|Q~q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst20|Q~q\ : std_logic;
SIGNAL \SUM_RES~input_o\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst14|Q~feeder_combout\ : std_logic;
SIGNAL \inst14|Q~q\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst21|Q~q\ : std_logic;
SIGNAL \inst5|cout~0_combout\ : std_logic;
SIGNAL \inst5|cout~1_combout\ : std_logic;
SIGNAL \inst6|cout~0_combout\ : std_logic;
SIGNAL \inst7|z~0_combout\ : std_logic;
SIGNAL \inst6|z~combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst17|Q~feeder_combout\ : std_logic;
SIGNAL \inst17|Q~q\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst18|Q~q\ : std_logic;
SIGNAL \inst7|cout~0_combout\ : std_logic;
SIGNAL \inst9|z~0_combout\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst26|Q~q\ : std_logic;
SIGNAL \inst22|Q~q\ : std_logic;
SIGNAL \inst23|Q~q\ : std_logic;
SIGNAL \inst24|Q~q\ : std_logic;
SIGNAL \inst5|z~0_combout\ : std_logic;
SIGNAL \inst25|Q~q\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst29|Q~q\ : std_logic;
SIGNAL \inst27|Q~q\ : std_logic;

BEGIN

pin_name8 <= ww_pin_name8;
ww_A0 <= A0;
ww_CLK <= CLK;
ww_B0 <= B0;
ww_SUM_RES <= SUM_RES;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A3 <= A3;
ww_B3 <= B3;
S3 <= ww_S3;
S2 <= ww_S2;
S1 <= ww_S1;
S0 <= ww_S0;
C <= ww_C;
V <= ww_V;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X68_Y1_N23
\inst15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst15|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|Q~q\);

-- Location: IOIBUF_X81_Y0_N22
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X68_Y1_N22
\inst15|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Q~feeder_combout\ = \A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \inst15|Q~feeder_combout\);

-- Location: IOOBUF_X72_Y0_N9
\pin_name8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Q~q\,
	devoe => ww_devoe,
	o => \pin_name8~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Q~q\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Q~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Q~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Q~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Q~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|Q~q\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X67_Y0_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X68_Y1_N20
\inst19|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Q~feeder_combout\ = \B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B2~input_o\,
	combout => \inst19|Q~feeder_combout\);

-- Location: FF_X68_Y1_N21
\inst19|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst19|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Q~q\);

-- Location: IOIBUF_X94_Y0_N8
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: FF_X68_Y1_N19
\inst16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \A2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|Q~q\);

-- Location: IOIBUF_X74_Y73_N22
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: FF_X68_Y1_N9
\inst20|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q~q\);

-- Location: IOIBUF_X5_Y73_N8
\SUM_RES~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUM_RES,
	o => \SUM_RES~input_o\);

-- Location: LCCOMB_X68_Y1_N8
inst11 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~combout\ = \inst20|Q~q\ $ (\SUM_RES~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q~q\,
	datad => \SUM_RES~input_o\,
	combout => \inst11~combout\);

-- Location: IOIBUF_X85_Y0_N8
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X68_Y1_N14
\inst14|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Q~feeder_combout\ = \A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A0~input_o\,
	combout => \inst14|Q~feeder_combout\);

-- Location: FF_X68_Y1_N15
\inst14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Q~q\);

-- Location: IOIBUF_X74_Y73_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: FF_X68_Y1_N17
\inst21|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|Q~q\);

-- Location: LCCOMB_X68_Y1_N4
\inst5|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|cout~0_combout\ = (\inst14|Q~q\ & (\SUM_RES~input_o\ $ (\inst21|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_RES~input_o\,
	datab => \inst14|Q~q\,
	datad => \inst21|Q~q\,
	combout => \inst5|cout~0_combout\);

-- Location: LCCOMB_X68_Y1_N24
\inst5|cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|cout~1_combout\ = (\SUM_RES~input_o\ & (\inst14|Q~q\ $ (!\inst21|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_RES~input_o\,
	datab => \inst14|Q~q\,
	datad => \inst21|Q~q\,
	combout => \inst5|cout~1_combout\);

-- Location: LCCOMB_X68_Y1_N10
\inst6|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cout~0_combout\ = (\inst15|Q~q\ & ((\inst11~combout\) # ((\inst5|cout~0_combout\) # (\inst5|cout~1_combout\)))) # (!\inst15|Q~q\ & (\inst11~combout\ & ((\inst5|cout~0_combout\) # (\inst5|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Q~q\,
	datab => \inst11~combout\,
	datac => \inst5|cout~0_combout\,
	datad => \inst5|cout~1_combout\,
	combout => \inst6|cout~0_combout\);

-- Location: LCCOMB_X68_Y1_N0
\inst7|z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|z~0_combout\ = \SUM_RES~input_o\ $ (\inst19|Q~q\ $ (\inst16|Q~q\ $ (\inst6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_RES~input_o\,
	datab => \inst19|Q~q\,
	datac => \inst16|Q~q\,
	datad => \inst6|cout~0_combout\,
	combout => \inst7|z~0_combout\);

-- Location: LCCOMB_X68_Y1_N26
\inst6|z\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|z~combout\ = \inst15|Q~q\ $ (\inst11~combout\ $ (((\inst5|cout~1_combout\) # (\inst5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Q~q\,
	datab => \inst11~combout\,
	datac => \inst5|cout~1_combout\,
	datad => \inst5|cout~0_combout\,
	combout => \inst6|z~combout\);

-- Location: IOIBUF_X56_Y0_N22
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X68_Y1_N28
\inst17|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Q~feeder_combout\ = \A3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3~input_o\,
	combout => \inst17|Q~feeder_combout\);

-- Location: FF_X68_Y1_N29
\inst17|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst17|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Q~q\);

-- Location: IOIBUF_X83_Y0_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: FF_X68_Y1_N31
\inst18|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q~q\);

-- Location: LCCOMB_X68_Y1_N18
\inst7|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cout~0_combout\ = (\inst16|Q~q\ & ((\inst6|cout~0_combout\) # (\SUM_RES~input_o\ $ (\inst19|Q~q\)))) # (!\inst16|Q~q\ & (\inst6|cout~0_combout\ & (\SUM_RES~input_o\ $ (\inst19|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_RES~input_o\,
	datab => \inst19|Q~q\,
	datac => \inst16|Q~q\,
	datad => \inst6|cout~0_combout\,
	combout => \inst7|cout~0_combout\);

-- Location: LCCOMB_X68_Y1_N6
\inst9|z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|z~0_combout\ = \SUM_RES~input_o\ $ (\inst17|Q~q\ $ (\inst18|Q~q\ $ (\inst7|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_RES~input_o\,
	datab => \inst17|Q~q\,
	datac => \inst18|Q~q\,
	datad => \inst7|cout~0_combout\,
	combout => \inst9|z~0_combout\);

-- Location: LCCOMB_X68_Y1_N12
inst35 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst35~combout\ = (!\inst5|z~0_combout\ & (!\inst7|z~0_combout\ & (!\inst6|z~combout\ & !\inst9|z~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|z~0_combout\,
	datab => \inst7|z~0_combout\,
	datac => \inst6|z~combout\,
	datad => \inst9|z~0_combout\,
	combout => \inst35~combout\);

-- Location: FF_X68_Y1_N13
\inst26|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Q~q\);

-- Location: FF_X68_Y1_N7
\inst22|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst9|z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Q~q\);

-- Location: FF_X68_Y1_N1
\inst23|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst7|z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Q~q\);

-- Location: FF_X68_Y1_N27
\inst24|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Q~q\);

-- Location: LCCOMB_X68_Y1_N16
\inst5|z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|z~0_combout\ = \inst21|Q~q\ $ (\inst14|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|Q~q\,
	datad => \inst14|Q~q\,
	combout => \inst5|z~0_combout\);

-- Location: FF_X68_Y1_N5
\inst25|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst5|z~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|Q~q\);

-- Location: LCCOMB_X68_Y1_N2
\inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\inst17|Q~q\ & ((\inst7|cout~0_combout\ & (!\SUM_RES~input_o\)) # (!\inst7|cout~0_combout\ & ((\inst18|Q~q\))))) # (!\inst17|Q~q\ & ((\inst7|cout~0_combout\ & ((\inst18|Q~q\))) # (!\inst7|cout~0_combout\ & (\SUM_RES~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_RES~input_o\,
	datab => \inst17|Q~q\,
	datac => \inst18|Q~q\,
	datad => \inst7|cout~0_combout\,
	combout => \inst8~0_combout\);

-- Location: FF_X68_Y1_N3
\inst29|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|Q~q\);

-- Location: FF_X68_Y1_N25
\inst27|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst7|z~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Q~q\);

ww_pin_name8 <= \pin_name8~output_o\;

ww_S3 <= \S3~output_o\;

ww_S2 <= \S2~output_o\;

ww_S1 <= \S1~output_o\;

ww_S0 <= \S0~output_o\;

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;

ww_S <= \S~output_o\;
END structure;


