-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/26/2019 18:26:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MKdusk8BitsProcess
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MKdusk8BitsProcess_vhd_vec_tst IS
END MKdusk8BitsProcess_vhd_vec_tst;
ARCHITECTURE MKdusk8BitsProcess_arch OF MKdusk8BitsProcess_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL herbert : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_rom : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL miller : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_branch : STD_LOGIC;
SIGNAL out_extensor_sinal : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_mem_read : STD_LOGIC;
SIGNAL out_mem_to_reg : STD_LOGIC;
SIGNAL out_mem_write : STD_LOGIC;
SIGNAL out_multiplex_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_multiplex_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_multiplex_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_multiplex_4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL out_pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_ram : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_reg_write : STD_LOGIC;
SIGNAL out_ula_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL out_ula_resultado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_ula_src : STD_LOGIC;
SIGNAL out_zero : STD_LOGIC;
SIGNAL tarlison : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MKdusk8BitsProcess
	PORT (
	clock : IN STD_LOGIC;
	herbert : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_rom : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	miller : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_branch : BUFFER STD_LOGIC;
	out_extensor_sinal : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_mem_read : BUFFER STD_LOGIC;
	out_mem_to_reg : BUFFER STD_LOGIC;
	out_mem_write : BUFFER STD_LOGIC;
	out_multiplex_1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_multiplex_2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_multiplex_3 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_multiplex_4 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_opcode : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	out_pc : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_ram : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_reg_write : BUFFER STD_LOGIC;
	out_ula_op : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	out_ula_resultado : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_ula_src : BUFFER STD_LOGIC;
	out_zero : BUFFER STD_LOGIC;
	tarlison : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MKdusk8BitsProcess
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	herbert => herbert,
	in_rom => in_rom,
	miller => miller,
	out_branch => out_branch,
	out_extensor_sinal => out_extensor_sinal,
	out_mem_read => out_mem_read,
	out_mem_to_reg => out_mem_to_reg,
	out_mem_write => out_mem_write,
	out_multiplex_1 => out_multiplex_1,
	out_multiplex_2 => out_multiplex_2,
	out_multiplex_3 => out_multiplex_3,
	out_multiplex_4 => out_multiplex_4,
	out_opcode => out_opcode,
	out_pc => out_pc,
	out_ram => out_ram,
	out_reg_write => out_reg_write,
	out_ula_op => out_ula_op,
	out_ula_resultado => out_ula_resultado,
	out_ula_src => out_ula_src,
	out_zero => out_zero,
	tarlison => tarlison
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END MKdusk8BitsProcess_arch;
