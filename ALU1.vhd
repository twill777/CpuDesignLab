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

LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

LIBRARY work;

ARCHITECTURE ARCH OF ALU IS

	SIGNAL TEST : STD_LOGIC_VECTOR(31 DOWNTO 0);

	BEGIN
		PROCESS(A, B, opcode, TEST, rot_dist, shift_dist, sel, rot_sel, shift_sel, aluNum)
		BEGIN
			TEST <= (X"00000000');
			
			IF opcode = "0000" THEN
			
			ELSEIF
			
			
			
			ELSE
			
			END IF;
	END PROCESS;
END ARCH;
	
-- BOOTHS ALGORITHM
ARCHITECTURE MUL OF multiplication IS
