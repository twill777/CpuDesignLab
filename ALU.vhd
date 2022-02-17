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
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Thu Feb 17 16:02:54 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU IS 
	PORT
	(
		rot_sel :  IN  STD_LOGIC;
		shift_sel :  IN  STD_LOGIC;
		opcode :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rot_dist :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		sel :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		shift_dist :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		aluNum :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END ALU;

ARCHITECTURE bdf_type OF ALU IS 

COMPONENT add
	PORT(dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rot
	PORT(direction : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sub
	PORT(dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift
	PORT(direction : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT division
	PORT(denom : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 numer : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 quotient : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 remain : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT multiplication
	PORT(dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data0x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data4x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data5x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data6x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data7x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	addNum :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	andout :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	dist1 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist2 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	divNum :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	multiNum :  STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL	orout :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	remainder :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	result :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rotNum :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	shiftNum :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	subNum :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst1 : add
PORT MAP(dataa => A,
		 datab => B,
		 result => addNum);


b2v_inst2 : rot
PORT MAP(direction => rot_sel,
		 data => A,
		 distance => rot_dist,
		 result => rotNum);


b2v_inst3 : sub
PORT MAP(dataa => A,
		 datab => B,
		 result => subNum);


b2v_inst4 : shift
PORT MAP(direction => shift_sel,
		 data => A,
		 distance => shift_dist,
		 result => shiftNum);


b2v_inst44 : division
PORT MAP(denom => B,
		 numer => A,
		 quotient => divNum);


orout <= B OR A;


b2v_inst55 : multiplication
PORT MAP(dataa => A,
		 datab => B,
		 result => multiNum);


b2v_inst6 : lpm_mux0
PORT MAP(data0x => shiftNum,
		 data1x => rotNum,
		 data2x => multiNum(31 DOWNTO 0),
		 data3x => divNum,
		 data4x => subNum,
		 data5x => addNum,
		 data6x => orout,
		 data7x => andout,
		 sel => sel,
		 result => result);


andout <= A AND B;

aluNum <= result;

END bdf_type;