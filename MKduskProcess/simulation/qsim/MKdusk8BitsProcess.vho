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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/26/2019 18:26:33"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MKdusk8BitsProcess IS
    PORT (
	clock : IN std_logic;
	out_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	out_extensor_sinal : BUFFER std_logic_vector(7 DOWNTO 0);
	herbert : BUFFER std_logic_vector(7 DOWNTO 0);
	in_rom : BUFFER std_logic_vector(7 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(2 DOWNTO 0);
	miller : BUFFER std_logic_vector(7 DOWNTO 0);
	tarlison : BUFFER std_logic_vector(7 DOWNTO 0);
	out_multiplex_1 : BUFFER std_logic_vector(7 DOWNTO 0);
	out_multiplex_2 : BUFFER std_logic_vector(7 DOWNTO 0);
	out_multiplex_3 : BUFFER std_logic_vector(7 DOWNTO 0);
	out_multiplex_4 : BUFFER std_logic_vector(7 DOWNTO 0);
	out_branch : BUFFER std_logic;
	out_mem_read : BUFFER std_logic;
	out_mem_write : BUFFER std_logic;
	out_ula_src : BUFFER std_logic;
	out_reg_write : BUFFER std_logic;
	out_mem_to_reg : BUFFER std_logic;
	out_ula_op : BUFFER std_logic_vector(2 DOWNTO 0);
	out_ram : BUFFER std_logic_vector(7 DOWNTO 0);
	out_zero : BUFFER std_logic;
	out_ula_resultado : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MKdusk8BitsProcess;

ARCHITECTURE structure OF MKdusk8BitsProcess IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_out_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_extensor_sinal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_herbert : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_rom : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_miller : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tarlison : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_multiplex_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_multiplex_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_multiplex_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_multiplex_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_branch : std_logic;
SIGNAL ww_out_mem_read : std_logic;
SIGNAL ww_out_mem_write : std_logic;
SIGNAL ww_out_ula_src : std_logic;
SIGNAL ww_out_reg_write : std_logic;
SIGNAL ww_out_mem_to_reg : std_logic;
SIGNAL ww_out_ula_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_zero : std_logic;
SIGNAL ww_out_ula_resultado : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_pc[0]~output_o\ : std_logic;
SIGNAL \out_pc[1]~output_o\ : std_logic;
SIGNAL \out_pc[2]~output_o\ : std_logic;
SIGNAL \out_pc[3]~output_o\ : std_logic;
SIGNAL \out_pc[4]~output_o\ : std_logic;
SIGNAL \out_pc[5]~output_o\ : std_logic;
SIGNAL \out_pc[6]~output_o\ : std_logic;
SIGNAL \out_pc[7]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[0]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[1]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[2]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[3]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[4]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[5]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[6]~output_o\ : std_logic;
SIGNAL \out_extensor_sinal[7]~output_o\ : std_logic;
SIGNAL \herbert[0]~output_o\ : std_logic;
SIGNAL \herbert[1]~output_o\ : std_logic;
SIGNAL \herbert[2]~output_o\ : std_logic;
SIGNAL \herbert[3]~output_o\ : std_logic;
SIGNAL \herbert[4]~output_o\ : std_logic;
SIGNAL \herbert[5]~output_o\ : std_logic;
SIGNAL \herbert[6]~output_o\ : std_logic;
SIGNAL \herbert[7]~output_o\ : std_logic;
SIGNAL \in_rom[0]~output_o\ : std_logic;
SIGNAL \in_rom[1]~output_o\ : std_logic;
SIGNAL \in_rom[2]~output_o\ : std_logic;
SIGNAL \in_rom[3]~output_o\ : std_logic;
SIGNAL \in_rom[4]~output_o\ : std_logic;
SIGNAL \in_rom[5]~output_o\ : std_logic;
SIGNAL \in_rom[6]~output_o\ : std_logic;
SIGNAL \in_rom[7]~output_o\ : std_logic;
SIGNAL \out_opcode[0]~output_o\ : std_logic;
SIGNAL \out_opcode[1]~output_o\ : std_logic;
SIGNAL \out_opcode[2]~output_o\ : std_logic;
SIGNAL \miller[0]~output_o\ : std_logic;
SIGNAL \miller[1]~output_o\ : std_logic;
SIGNAL \miller[2]~output_o\ : std_logic;
SIGNAL \miller[3]~output_o\ : std_logic;
SIGNAL \miller[4]~output_o\ : std_logic;
SIGNAL \miller[5]~output_o\ : std_logic;
SIGNAL \miller[6]~output_o\ : std_logic;
SIGNAL \miller[7]~output_o\ : std_logic;
SIGNAL \tarlison[0]~output_o\ : std_logic;
SIGNAL \tarlison[1]~output_o\ : std_logic;
SIGNAL \tarlison[2]~output_o\ : std_logic;
SIGNAL \tarlison[3]~output_o\ : std_logic;
SIGNAL \tarlison[4]~output_o\ : std_logic;
SIGNAL \tarlison[5]~output_o\ : std_logic;
SIGNAL \tarlison[6]~output_o\ : std_logic;
SIGNAL \tarlison[7]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[0]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[1]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[2]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[3]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[4]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[5]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[6]~output_o\ : std_logic;
SIGNAL \out_multiplex_1[7]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[0]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[1]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[2]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[3]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[4]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[5]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[6]~output_o\ : std_logic;
SIGNAL \out_multiplex_2[7]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[0]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[1]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[2]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[3]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[4]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[5]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[6]~output_o\ : std_logic;
SIGNAL \out_multiplex_3[7]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[0]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[1]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[2]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[3]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[4]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[5]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[6]~output_o\ : std_logic;
SIGNAL \out_multiplex_4[7]~output_o\ : std_logic;
SIGNAL \out_branch~output_o\ : std_logic;
SIGNAL \out_mem_read~output_o\ : std_logic;
SIGNAL \out_mem_write~output_o\ : std_logic;
SIGNAL \out_ula_src~output_o\ : std_logic;
SIGNAL \out_reg_write~output_o\ : std_logic;
SIGNAL \out_mem_to_reg~output_o\ : std_logic;
SIGNAL \out_ula_op[0]~output_o\ : std_logic;
SIGNAL \out_ula_op[1]~output_o\ : std_logic;
SIGNAL \out_ula_op[2]~output_o\ : std_logic;
SIGNAL \out_ram[0]~output_o\ : std_logic;
SIGNAL \out_ram[1]~output_o\ : std_logic;
SIGNAL \out_ram[2]~output_o\ : std_logic;
SIGNAL \out_ram[3]~output_o\ : std_logic;
SIGNAL \out_ram[4]~output_o\ : std_logic;
SIGNAL \out_ram[5]~output_o\ : std_logic;
SIGNAL \out_ram[6]~output_o\ : std_logic;
SIGNAL \out_ram[7]~output_o\ : std_logic;
SIGNAL \out_zero~output_o\ : std_logic;
SIGNAL \out_ula_resultado[0]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[1]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[2]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[3]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[4]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[5]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[6]~output_o\ : std_logic;
SIGNAL \out_ula_resultado[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \UC|Mux2~0_combout\ : std_logic;
SIGNAL \UC|Mux3~0_combout\ : std_logic;
SIGNAL \UC|Mux6~0_combout\ : std_logic;
SIGNAL \ULA_1|Mux6~0_combout\ : std_logic;
SIGNAL \UC|Mux0~0_combout\ : std_logic;
SIGNAL \memory_rom|Mux6~0_combout\ : std_logic;
SIGNAL \ULA_1|Mux8~0_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~43_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~13_q\ : std_logic;
SIGNAL \banco_registradores|Reg~27_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~12_q\ : std_logic;
SIGNAL \banco_registradores|Reg~37_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~11_q\ : std_logic;
SIGNAL \banco_registradores|Reg~31_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~10_q\ : std_logic;
SIGNAL \banco_registradores|Reg~32_combout\ : std_logic;
SIGNAL \UC|Mux3~1_combout\ : std_logic;
SIGNAL \ULA_1|Add0~35_cout\ : std_logic;
SIGNAL \ULA_1|Add0~14\ : std_logic;
SIGNAL \ULA_1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA_1|Mux7~0_combout\ : std_logic;
SIGNAL \multiplexador_2|R[1]~2_combout\ : std_logic;
SIGNAL \UC|Mux6~1_combout\ : std_logic;
SIGNAL \multiplexador_5|R[1]~1_combout\ : std_logic;
SIGNAL \ram_1|memoria~34_combout\ : std_logic;
SIGNAL \ram_1|memoria~19_q\ : std_logic;
SIGNAL \ram_1|memoria~35_combout\ : std_logic;
SIGNAL \ram_1|memoria~11_q\ : std_logic;
SIGNAL \ram_1|memoria~27_combout\ : std_logic;
SIGNAL \multiplexador_3|R[1]~1_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~42_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~19_q\ : std_logic;
SIGNAL \banco_registradores|Reg~30_combout\ : std_logic;
SIGNAL \ULA_1|Add0~22\ : std_logic;
SIGNAL \ULA_1|Add0~25_sumout\ : std_logic;
SIGNAL \multiplexador_5|R[2]~2_combout\ : std_logic;
SIGNAL \ram_1|memoria~20_q\ : std_logic;
SIGNAL \ram_1|memoria~12_q\ : std_logic;
SIGNAL \ram_1|memoria~28_combout\ : std_logic;
SIGNAL \multiplexador_3|R[2]~2_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~20_q\ : std_logic;
SIGNAL \banco_registradores|Reg~28_combout\ : std_logic;
SIGNAL \ULA_1|Add0~26\ : std_logic;
SIGNAL \ULA_1|Add0~1_sumout\ : std_logic;
SIGNAL \multiplexador_5|R[3]~3_combout\ : std_logic;
SIGNAL \ram_1|memoria~21_q\ : std_logic;
SIGNAL \ram_1|memoria~13_q\ : std_logic;
SIGNAL \ram_1|memoria~29_combout\ : std_logic;
SIGNAL \multiplexador_3|R[3]~3_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~21_q\ : std_logic;
SIGNAL \banco_registradores|Reg~26_combout\ : std_logic;
SIGNAL \multiplexador_2|R[3]~0_combout\ : std_logic;
SIGNAL \multiplexador_2|R[0]~1_combout\ : std_logic;
SIGNAL \ULA_1|LessThan1~0_combout\ : std_logic;
SIGNAL \ULA_1|LessThan1~1_combout\ : std_logic;
SIGNAL \ULA_1|LessThan1~2_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~15_q\ : std_logic;
SIGNAL \banco_registradores|Reg~34_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~39_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~14_q\ : std_logic;
SIGNAL \banco_registradores|Reg~38_combout\ : std_logic;
SIGNAL \ULA_1|Add0~2\ : std_logic;
SIGNAL \ULA_1|Add0~5_sumout\ : std_logic;
SIGNAL \multiplexador_5|R[4]~4_combout\ : std_logic;
SIGNAL \ram_1|memoria~22_q\ : std_logic;
SIGNAL \ram_1|memoria~14_q\ : std_logic;
SIGNAL \ram_1|memoria~30_combout\ : std_logic;
SIGNAL \multiplexador_3|R[4]~4_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~22_q\ : std_logic;
SIGNAL \banco_registradores|Reg~33_combout\ : std_logic;
SIGNAL \ULA_1|Add0~6\ : std_logic;
SIGNAL \ULA_1|Add0~17_sumout\ : std_logic;
SIGNAL \multiplexador_5|R[5]~5_combout\ : std_logic;
SIGNAL \ram_1|memoria~23_q\ : std_logic;
SIGNAL \ram_1|memoria~15_q\ : std_logic;
SIGNAL \ram_1|memoria~31_combout\ : std_logic;
SIGNAL \multiplexador_3|R[5]~5_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~23_q\ : std_logic;
SIGNAL \ULA_1|Mux8~1_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~17_q\ : std_logic;
SIGNAL \banco_registradores|Reg~36_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~41_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~16_q\ : std_logic;
SIGNAL \banco_registradores|Reg~40_combout\ : std_logic;
SIGNAL \ULA_1|Add0~18\ : std_logic;
SIGNAL \ULA_1|Add0~10\ : std_logic;
SIGNAL \ULA_1|Add0~29_sumout\ : std_logic;
SIGNAL \multiplexador_5|R[7]~7_combout\ : std_logic;
SIGNAL \ram_1|memoria~25_q\ : std_logic;
SIGNAL \ram_1|memoria~17_q\ : std_logic;
SIGNAL \ram_1|memoria~33_combout\ : std_logic;
SIGNAL \multiplexador_3|R[7]~7_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~25_q\ : std_logic;
SIGNAL \ULA_1|Mux8~2_combout\ : std_logic;
SIGNAL \ULA_1|Mux8~3_combout\ : std_logic;
SIGNAL \ULA_1|Mux8~4_combout\ : std_logic;
SIGNAL \multiplexador_5|R[0]~0_combout\ : std_logic;
SIGNAL \ram_1|memoria~18_q\ : std_logic;
SIGNAL \ram_1|memoria~10_q\ : std_logic;
SIGNAL \ram_1|memoria~26_combout\ : std_logic;
SIGNAL \multiplexador_3|R[0]~0_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~18_q\ : std_logic;
SIGNAL \banco_registradores|Reg~29_combout\ : std_logic;
SIGNAL \ULA_1|Add0~32_combout\ : std_logic;
SIGNAL \ULA_1|Add0~13_sumout\ : std_logic;
SIGNAL \multiplexador_5|R[6]~6_combout\ : std_logic;
SIGNAL \ram_1|memoria~24_q\ : std_logic;
SIGNAL \ram_1|memoria~16_q\ : std_logic;
SIGNAL \ram_1|memoria~32_combout\ : std_logic;
SIGNAL \multiplexador_3|R[6]~6_combout\ : std_logic;
SIGNAL \banco_registradores|Reg~24_q\ : std_logic;
SIGNAL \banco_registradores|Reg~35_combout\ : std_logic;
SIGNAL \ULA_1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA_1|Equal0~5_combout\ : std_logic;
SIGNAL \ULA_1|Equal0~0_combout\ : std_logic;
SIGNAL \ULA_1|Equal0~1_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~2\ : std_logic;
SIGNAL \add_pc_1|Add0~6\ : std_logic;
SIGNAL \add_pc_1|Add0~10\ : std_logic;
SIGNAL \add_pc_1|Add0~13_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[3]~3_combout\ : std_logic;
SIGNAL \multiplexador_4|R[3]~4_combout\ : std_logic;
SIGNAL \memory_rom|Mux1~0_combout\ : std_logic;
SIGNAL \UC|Mux4~0_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~9_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[2]~2_combout\ : std_logic;
SIGNAL \memory_rom|Mux2~0_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~5_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[1]~1_combout\ : std_logic;
SIGNAL \memory_rom|Mux0~0_combout\ : std_logic;
SIGNAL \UC|Mux4~1_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~1_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[0]~0_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~14\ : std_logic;
SIGNAL \add_pc_1|Add0~17_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[4]~5_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~18\ : std_logic;
SIGNAL \add_pc_1|Add0~21_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[5]~6_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~22\ : std_logic;
SIGNAL \add_pc_1|Add0~25_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[6]~7_combout\ : std_logic;
SIGNAL \add_pc_1|Add0~26\ : std_logic;
SIGNAL \add_pc_1|Add0~29_sumout\ : std_logic;
SIGNAL \multiplexador_4|R[7]~8_combout\ : std_logic;
SIGNAL \memory_rom|Mux4~0_combout\ : std_logic;
SIGNAL \extensor_sinal|SAIDA[3]~0_combout\ : std_logic;
SIGNAL \memory_rom|Mux3~0_combout\ : std_logic;
SIGNAL \multiplexador_2|R[2]~3_combout\ : std_logic;
SIGNAL \multiplexador_2|R[4]~4_combout\ : std_logic;
SIGNAL \multiplexador_2|R[5]~5_combout\ : std_logic;
SIGNAL \multiplexador_2|R[6]~6_combout\ : std_logic;
SIGNAL \multiplexador_2|R[7]~7_combout\ : std_logic;
SIGNAL \ULA_1|Equal0~4_combout\ : std_logic;
SIGNAL \ULA_1|Equal0~2_combout\ : std_logic;
SIGNAL \ULA_1|Equal0~3_combout\ : std_logic;
SIGNAL \ULA_1|Mux8~5_combout\ : std_logic;
SIGNAL \ULA_1|Mux7~1_combout\ : std_logic;
SIGNAL \ULA_1|Mux6~1_combout\ : std_logic;
SIGNAL \ULA_1|Mux5~0_combout\ : std_logic;
SIGNAL \ULA_1|Mux4~0_combout\ : std_logic;
SIGNAL \ULA_1|Mux3~0_combout\ : std_logic;
SIGNAL \ULA_1|Mux2~0_combout\ : std_logic;
SIGNAL \ULA_1|Mux1~0_combout\ : std_logic;
SIGNAL \Program_Counter|pout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_1|dado_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \memory_rom|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Program_Counter|ALT_INV_pout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory_rom|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \memory_rom|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \add_pc_1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~14_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~22_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~13_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~21_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~12_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~20_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~11_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~19_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~10_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~18_q\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Add0~32_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ram_1|ALT_INV_dado_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~41_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~40_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~39_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~38_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~37_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~36_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~35_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~34_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~33_combout\ : std_logic;
SIGNAL \memory_rom|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \multiplexador_4|ALT_INV_R[3]~3_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \multiplexador_2|ALT_INV_R[1]~2_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~16_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~17_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~14_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~22_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~15_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \ULA_1|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~32_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~31_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~30_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~11_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~19_q\ : std_logic;
SIGNAL \multiplexador_2|ALT_INV_R[0]~1_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~29_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~10_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~18_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~28_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~12_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~20_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~27_combout\ : std_logic;
SIGNAL \multiplexador_2|ALT_INV_R[3]~0_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~26_combout\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~13_q\ : std_logic;
SIGNAL \banco_registradores|ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \memory_rom|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ULA_1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~17_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~25_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~16_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~24_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~15_q\ : std_logic;
SIGNAL \ram_1|ALT_INV_memoria~23_q\ : std_logic;

BEGIN

ww_clock <= clock;
out_pc <= ww_out_pc;
out_extensor_sinal <= ww_out_extensor_sinal;
herbert <= ww_herbert;
in_rom <= ww_in_rom;
out_opcode <= ww_out_opcode;
miller <= ww_miller;
tarlison <= ww_tarlison;
out_multiplex_1 <= ww_out_multiplex_1;
out_multiplex_2 <= ww_out_multiplex_2;
out_multiplex_3 <= ww_out_multiplex_3;
out_multiplex_4 <= ww_out_multiplex_4;
out_branch <= ww_out_branch;
out_mem_read <= ww_out_mem_read;
out_mem_write <= ww_out_mem_write;
out_ula_src <= ww_out_ula_src;
out_reg_write <= ww_out_reg_write;
out_mem_to_reg <= ww_out_mem_to_reg;
out_ula_op <= ww_out_ula_op;
out_ram <= ww_out_ram;
out_zero <= ww_out_zero;
out_ula_resultado <= ww_out_ula_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\UC|ALT_INV_Mux4~1_combout\ <= NOT \UC|Mux4~1_combout\;
\UC|ALT_INV_Mux4~0_combout\ <= NOT \UC|Mux4~0_combout\;
\memory_rom|ALT_INV_Mux1~0_combout\ <= NOT \memory_rom|Mux1~0_combout\;
\Program_Counter|ALT_INV_pout\(3) <= NOT \Program_Counter|pout\(3);
\memory_rom|ALT_INV_Mux2~0_combout\ <= NOT \memory_rom|Mux2~0_combout\;
\memory_rom|ALT_INV_Mux0~0_combout\ <= NOT \memory_rom|Mux0~0_combout\;
\Program_Counter|ALT_INV_pout\(0) <= NOT \Program_Counter|pout\(0);
\Program_Counter|ALT_INV_pout\(2) <= NOT \Program_Counter|pout\(2);
\Program_Counter|ALT_INV_pout\(1) <= NOT \Program_Counter|pout\(1);
\add_pc_1|ALT_INV_Add0~29_sumout\ <= NOT \add_pc_1|Add0~29_sumout\;
\add_pc_1|ALT_INV_Add0~25_sumout\ <= NOT \add_pc_1|Add0~25_sumout\;
\add_pc_1|ALT_INV_Add0~21_sumout\ <= NOT \add_pc_1|Add0~21_sumout\;
\add_pc_1|ALT_INV_Add0~17_sumout\ <= NOT \add_pc_1|Add0~17_sumout\;
\add_pc_1|ALT_INV_Add0~13_sumout\ <= NOT \add_pc_1|Add0~13_sumout\;
\add_pc_1|ALT_INV_Add0~9_sumout\ <= NOT \add_pc_1|Add0~9_sumout\;
\add_pc_1|ALT_INV_Add0~5_sumout\ <= NOT \add_pc_1|Add0~5_sumout\;
\add_pc_1|ALT_INV_Add0~1_sumout\ <= NOT \add_pc_1|Add0~1_sumout\;
\ULA_1|ALT_INV_Add0~29_sumout\ <= NOT \ULA_1|Add0~29_sumout\;
\ULA_1|ALT_INV_Add0~25_sumout\ <= NOT \ULA_1|Add0~25_sumout\;
\ULA_1|ALT_INV_Add0~21_sumout\ <= NOT \ULA_1|Add0~21_sumout\;
\ULA_1|ALT_INV_Add0~17_sumout\ <= NOT \ULA_1|Add0~17_sumout\;
\ULA_1|ALT_INV_Add0~13_sumout\ <= NOT \ULA_1|Add0~13_sumout\;
\ULA_1|ALT_INV_Add0~9_sumout\ <= NOT \ULA_1|Add0~9_sumout\;
\ULA_1|ALT_INV_Add0~5_sumout\ <= NOT \ULA_1|Add0~5_sumout\;
\ULA_1|ALT_INV_Add0~1_sumout\ <= NOT \ULA_1|Add0~1_sumout\;
\ram_1|ALT_INV_memoria~14_q\ <= NOT \ram_1|memoria~14_q\;
\ram_1|ALT_INV_memoria~22_q\ <= NOT \ram_1|memoria~22_q\;
\ram_1|ALT_INV_memoria~13_q\ <= NOT \ram_1|memoria~13_q\;
\ram_1|ALT_INV_memoria~21_q\ <= NOT \ram_1|memoria~21_q\;
\ram_1|ALT_INV_memoria~12_q\ <= NOT \ram_1|memoria~12_q\;
\ram_1|ALT_INV_memoria~20_q\ <= NOT \ram_1|memoria~20_q\;
\ram_1|ALT_INV_memoria~11_q\ <= NOT \ram_1|memoria~11_q\;
\ram_1|ALT_INV_memoria~19_q\ <= NOT \ram_1|memoria~19_q\;
\ram_1|ALT_INV_memoria~10_q\ <= NOT \ram_1|memoria~10_q\;
\ram_1|ALT_INV_memoria~18_q\ <= NOT \ram_1|memoria~18_q\;
\Program_Counter|ALT_INV_pout\(7) <= NOT \Program_Counter|pout\(7);
\Program_Counter|ALT_INV_pout\(6) <= NOT \Program_Counter|pout\(6);
\Program_Counter|ALT_INV_pout\(5) <= NOT \Program_Counter|pout\(5);
\Program_Counter|ALT_INV_pout\(4) <= NOT \Program_Counter|pout\(4);
\ULA_1|ALT_INV_Add0~32_combout\ <= NOT \ULA_1|Add0~32_combout\;
\UC|ALT_INV_Mux3~0_combout\ <= NOT \UC|Mux3~0_combout\;
\ULA_1|ALT_INV_Equal0~2_combout\ <= NOT \ULA_1|Equal0~2_combout\;
\UC|ALT_INV_Mux6~1_combout\ <= NOT \UC|Mux6~1_combout\;
\ram_1|ALT_INV_dado_saida\(7) <= NOT \ram_1|dado_saida\(7);
\ram_1|ALT_INV_dado_saida\(6) <= NOT \ram_1|dado_saida\(6);
\ram_1|ALT_INV_dado_saida\(5) <= NOT \ram_1|dado_saida\(5);
\ram_1|ALT_INV_dado_saida\(4) <= NOT \ram_1|dado_saida\(4);
\ram_1|ALT_INV_dado_saida\(3) <= NOT \ram_1|dado_saida\(3);
\ram_1|ALT_INV_dado_saida\(2) <= NOT \ram_1|dado_saida\(2);
\ram_1|ALT_INV_dado_saida\(1) <= NOT \ram_1|dado_saida\(1);
\UC|ALT_INV_Mux0~0_combout\ <= NOT \UC|Mux0~0_combout\;
\ram_1|ALT_INV_dado_saida\(0) <= NOT \ram_1|dado_saida\(0);
\ULA_1|ALT_INV_Mux8~4_combout\ <= NOT \ULA_1|Mux8~4_combout\;
\UC|ALT_INV_Mux2~0_combout\ <= NOT \UC|Mux2~0_combout\;
\banco_registradores|ALT_INV_Reg~41_combout\ <= NOT \banco_registradores|Reg~41_combout\;
\banco_registradores|ALT_INV_Reg~40_combout\ <= NOT \banco_registradores|Reg~40_combout\;
\banco_registradores|ALT_INV_Reg~39_combout\ <= NOT \banco_registradores|Reg~39_combout\;
\banco_registradores|ALT_INV_Reg~38_combout\ <= NOT \banco_registradores|Reg~38_combout\;
\banco_registradores|ALT_INV_Reg~37_combout\ <= NOT \banco_registradores|Reg~37_combout\;
\banco_registradores|ALT_INV_Reg~36_combout\ <= NOT \banco_registradores|Reg~36_combout\;
\banco_registradores|ALT_INV_Reg~35_combout\ <= NOT \banco_registradores|Reg~35_combout\;
\banco_registradores|ALT_INV_Reg~34_combout\ <= NOT \banco_registradores|Reg~34_combout\;
\banco_registradores|ALT_INV_Reg~33_combout\ <= NOT \banco_registradores|Reg~33_combout\;
\memory_rom|ALT_INV_Mux4~0_combout\ <= NOT \memory_rom|Mux4~0_combout\;
\multiplexador_4|ALT_INV_R[3]~3_combout\ <= NOT \multiplexador_4|R[3]~3_combout\;
\ULA_1|ALT_INV_Equal0~1_combout\ <= NOT \ULA_1|Equal0~1_combout\;
\multiplexador_2|ALT_INV_R[1]~2_combout\ <= NOT \multiplexador_2|R[1]~2_combout\;
\ULA_1|ALT_INV_Mux7~0_combout\ <= NOT \ULA_1|Mux7~0_combout\;
\ULA_1|ALT_INV_Equal0~0_combout\ <= NOT \ULA_1|Equal0~0_combout\;
\ULA_1|ALT_INV_Mux8~3_combout\ <= NOT \ULA_1|Mux8~3_combout\;
\ULA_1|ALT_INV_Mux8~2_combout\ <= NOT \ULA_1|Mux8~2_combout\;
\banco_registradores|ALT_INV_Reg~16_q\ <= NOT \banco_registradores|Reg~16_q\;
\banco_registradores|ALT_INV_Reg~24_q\ <= NOT \banco_registradores|Reg~24_q\;
\banco_registradores|ALT_INV_Reg~17_q\ <= NOT \banco_registradores|Reg~17_q\;
\banco_registradores|ALT_INV_Reg~25_q\ <= NOT \banco_registradores|Reg~25_q\;
\ULA_1|ALT_INV_Mux8~1_combout\ <= NOT \ULA_1|Mux8~1_combout\;
\banco_registradores|ALT_INV_Reg~14_q\ <= NOT \banco_registradores|Reg~14_q\;
\banco_registradores|ALT_INV_Reg~22_q\ <= NOT \banco_registradores|Reg~22_q\;
\banco_registradores|ALT_INV_Reg~15_q\ <= NOT \banco_registradores|Reg~15_q\;
\banco_registradores|ALT_INV_Reg~23_q\ <= NOT \banco_registradores|Reg~23_q\;
\ULA_1|ALT_INV_LessThan1~2_combout\ <= NOT \ULA_1|LessThan1~2_combout\;
\ULA_1|ALT_INV_LessThan1~1_combout\ <= NOT \ULA_1|LessThan1~1_combout\;
\ULA_1|ALT_INV_LessThan1~0_combout\ <= NOT \ULA_1|LessThan1~0_combout\;
\banco_registradores|ALT_INV_Reg~32_combout\ <= NOT \banco_registradores|Reg~32_combout\;
\banco_registradores|ALT_INV_Reg~31_combout\ <= NOT \banco_registradores|Reg~31_combout\;
\banco_registradores|ALT_INV_Reg~30_combout\ <= NOT \banco_registradores|Reg~30_combout\;
\banco_registradores|ALT_INV_Reg~11_q\ <= NOT \banco_registradores|Reg~11_q\;
\banco_registradores|ALT_INV_Reg~19_q\ <= NOT \banco_registradores|Reg~19_q\;
\multiplexador_2|ALT_INV_R[0]~1_combout\ <= NOT \multiplexador_2|R[0]~1_combout\;
\banco_registradores|ALT_INV_Reg~29_combout\ <= NOT \banco_registradores|Reg~29_combout\;
\banco_registradores|ALT_INV_Reg~10_q\ <= NOT \banco_registradores|Reg~10_q\;
\banco_registradores|ALT_INV_Reg~18_q\ <= NOT \banco_registradores|Reg~18_q\;
\banco_registradores|ALT_INV_Reg~28_combout\ <= NOT \banco_registradores|Reg~28_combout\;
\banco_registradores|ALT_INV_Reg~12_q\ <= NOT \banco_registradores|Reg~12_q\;
\banco_registradores|ALT_INV_Reg~20_q\ <= NOT \banco_registradores|Reg~20_q\;
\banco_registradores|ALT_INV_Reg~27_combout\ <= NOT \banco_registradores|Reg~27_combout\;
\multiplexador_2|ALT_INV_R[3]~0_combout\ <= NOT \multiplexador_2|R[3]~0_combout\;
\banco_registradores|ALT_INV_Reg~26_combout\ <= NOT \banco_registradores|Reg~26_combout\;
\banco_registradores|ALT_INV_Reg~13_q\ <= NOT \banco_registradores|Reg~13_q\;
\banco_registradores|ALT_INV_Reg~21_q\ <= NOT \banco_registradores|Reg~21_q\;
\ULA_1|ALT_INV_Mux8~0_combout\ <= NOT \ULA_1|Mux8~0_combout\;
\ULA_1|ALT_INV_Mux6~0_combout\ <= NOT \ULA_1|Mux6~0_combout\;
\UC|ALT_INV_Mux6~0_combout\ <= NOT \UC|Mux6~0_combout\;
\memory_rom|ALT_INV_Mux6~0_combout\ <= NOT \memory_rom|Mux6~0_combout\;
\ULA_1|ALT_INV_Equal0~5_combout\ <= NOT \ULA_1|Equal0~5_combout\;
\ULA_1|ALT_INV_Equal0~4_combout\ <= NOT \ULA_1|Equal0~4_combout\;
\UC|ALT_INV_Mux3~1_combout\ <= NOT \UC|Mux3~1_combout\;
\ram_1|ALT_INV_memoria~17_q\ <= NOT \ram_1|memoria~17_q\;
\ram_1|ALT_INV_memoria~25_q\ <= NOT \ram_1|memoria~25_q\;
\ram_1|ALT_INV_memoria~16_q\ <= NOT \ram_1|memoria~16_q\;
\ram_1|ALT_INV_memoria~24_q\ <= NOT \ram_1|memoria~24_q\;
\ram_1|ALT_INV_memoria~15_q\ <= NOT \ram_1|memoria~15_q\;
\ram_1|ALT_INV_memoria~23_q\ <= NOT \ram_1|memoria~23_q\;

\out_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_pc[0]~output_o\);

\out_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_pc[1]~output_o\);

\out_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_pc[2]~output_o\);

\out_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[3]~4_combout\,
	devoe => ww_devoe,
	o => \out_pc[3]~output_o\);

\out_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[4]~5_combout\,
	devoe => ww_devoe,
	o => \out_pc[4]~output_o\);

\out_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[5]~6_combout\,
	devoe => ww_devoe,
	o => \out_pc[5]~output_o\);

\out_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[6]~7_combout\,
	devoe => ww_devoe,
	o => \out_pc[6]~output_o\);

\out_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[7]~8_combout\,
	devoe => ww_devoe,
	o => \out_pc[7]~output_o\);

\out_extensor_sinal[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \out_extensor_sinal[0]~output_o\);

\out_extensor_sinal[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out_extensor_sinal[1]~output_o\);

\out_extensor_sinal[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_extensor_sinal[2]~output_o\);

\out_extensor_sinal[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \extensor_sinal|SAIDA[3]~0_combout\,
	devoe => ww_devoe,
	o => \out_extensor_sinal[3]~output_o\);

\out_extensor_sinal[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_extensor_sinal[4]~output_o\);

\out_extensor_sinal[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_extensor_sinal[5]~output_o\);

\out_extensor_sinal[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_extensor_sinal[6]~output_o\);

\out_extensor_sinal[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_extensor_sinal[7]~output_o\);

\herbert[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \herbert[0]~output_o\);

\herbert[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \herbert[1]~output_o\);

\herbert[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \herbert[2]~output_o\);

\herbert[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \herbert[3]~output_o\);

\herbert[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \herbert[4]~output_o\);

\herbert[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \herbert[5]~output_o\);

\herbert[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \herbert[6]~output_o\);

\herbert[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \herbert[7]~output_o\);

\in_rom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[0]~output_o\);

\in_rom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[1]~output_o\);

\in_rom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[2]~output_o\);

\in_rom[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[3]~output_o\);

\in_rom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[4]~output_o\);

\in_rom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[5]~output_o\);

\in_rom[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[6]~output_o\);

\in_rom[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_rom[7]~output_o\);

\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out_opcode[0]~output_o\);

\out_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out_opcode[1]~output_o\);

\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rom|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \out_opcode[2]~output_o\);

\miller[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~32_combout\,
	devoe => ww_devoe,
	o => \miller[0]~output_o\);

\miller[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~30_combout\,
	devoe => ww_devoe,
	o => \miller[1]~output_o\);

\miller[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~28_combout\,
	devoe => ww_devoe,
	o => \miller[2]~output_o\);

\miller[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~27_combout\,
	devoe => ww_devoe,
	o => \miller[3]~output_o\);

\miller[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~33_combout\,
	devoe => ww_devoe,
	o => \miller[4]~output_o\);

\miller[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~34_combout\,
	devoe => ww_devoe,
	o => \miller[5]~output_o\);

\miller[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~35_combout\,
	devoe => ww_devoe,
	o => \miller[6]~output_o\);

\miller[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~36_combout\,
	devoe => ww_devoe,
	o => \miller[7]~output_o\);

\tarlison[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~29_combout\,
	devoe => ww_devoe,
	o => \tarlison[0]~output_o\);

\tarlison[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~31_combout\,
	devoe => ww_devoe,
	o => \tarlison[1]~output_o\);

\tarlison[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~37_combout\,
	devoe => ww_devoe,
	o => \tarlison[2]~output_o\);

\tarlison[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~26_combout\,
	devoe => ww_devoe,
	o => \tarlison[3]~output_o\);

\tarlison[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~38_combout\,
	devoe => ww_devoe,
	o => \tarlison[4]~output_o\);

\tarlison[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~39_combout\,
	devoe => ww_devoe,
	o => \tarlison[5]~output_o\);

\tarlison[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~40_combout\,
	devoe => ww_devoe,
	o => \tarlison[6]~output_o\);

\tarlison[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_registradores|Reg~41_combout\,
	devoe => ww_devoe,
	o => \tarlison[7]~output_o\);

\out_multiplex_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[0]~output_o\);

\out_multiplex_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[1]~output_o\);

\out_multiplex_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[2]~output_o\);

\out_multiplex_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[3]~4_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[3]~output_o\);

\out_multiplex_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[4]~5_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[4]~output_o\);

\out_multiplex_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[5]~6_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[5]~output_o\);

\out_multiplex_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[6]~7_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[6]~output_o\);

\out_multiplex_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_4|R[7]~8_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_1[7]~output_o\);

\out_multiplex_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[0]~1_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[0]~output_o\);

\out_multiplex_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[1]~2_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[1]~output_o\);

\out_multiplex_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[2]~3_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[2]~output_o\);

\out_multiplex_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[3]~0_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[3]~output_o\);

\out_multiplex_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[4]~output_o\);

\out_multiplex_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[5]~output_o\);

\out_multiplex_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[6]~output_o\);

\out_multiplex_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_2|R[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_2[7]~output_o\);

\out_multiplex_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[0]~output_o\);

\out_multiplex_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[1]~output_o\);

\out_multiplex_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[2]~output_o\);

\out_multiplex_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[3]~output_o\);

\out_multiplex_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[4]~output_o\);

\out_multiplex_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[5]~output_o\);

\out_multiplex_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[6]~output_o\);

\out_multiplex_3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_3|R[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_3[7]~output_o\);

\out_multiplex_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[0]~output_o\);

\out_multiplex_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[1]~output_o\);

\out_multiplex_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[2]~output_o\);

\out_multiplex_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[3]~output_o\);

\out_multiplex_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[4]~output_o\);

\out_multiplex_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[5]~output_o\);

\out_multiplex_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[6]~output_o\);

\out_multiplex_4[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexador_5|R[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_multiplex_4[7]~output_o\);

\out_branch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_branch~output_o\);

\out_mem_read~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_mem_read~output_o\);

\out_mem_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_mem_write~output_o\);

\out_ula_src~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula_src~output_o\);

\out_reg_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_reg_write~output_o\);

\out_mem_to_reg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_mem_to_reg~output_o\);

\out_ula_op[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula_op[0]~output_o\);

\out_ula_op[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula_op[1]~output_o\);

\out_ula_op[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula_op[2]~output_o\);

\out_ram[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(0),
	devoe => ww_devoe,
	o => \out_ram[0]~output_o\);

\out_ram[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(1),
	devoe => ww_devoe,
	o => \out_ram[1]~output_o\);

\out_ram[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(2),
	devoe => ww_devoe,
	o => \out_ram[2]~output_o\);

\out_ram[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(3),
	devoe => ww_devoe,
	o => \out_ram[3]~output_o\);

\out_ram[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(4),
	devoe => ww_devoe,
	o => \out_ram[4]~output_o\);

\out_ram[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(5),
	devoe => ww_devoe,
	o => \out_ram[5]~output_o\);

\out_ram[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(6),
	devoe => ww_devoe,
	o => \out_ram[6]~output_o\);

\out_ram[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_1|dado_saida\(7),
	devoe => ww_devoe,
	o => \out_ram[7]~output_o\);

\out_zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Equal0~3_combout\,
	devoe => ww_devoe,
	o => \out_zero~output_o\);

\out_ula_resultado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux8~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[0]~output_o\);

\out_ula_resultado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[1]~output_o\);

\out_ula_resultado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[2]~output_o\);

\out_ula_resultado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[3]~output_o\);

\out_ula_resultado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[4]~output_o\);

\out_ula_resultado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[5]~output_o\);

\out_ula_resultado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[6]~output_o\);

\out_ula_resultado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out_ula_resultado[7]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\Program_Counter|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(0));

\UC|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux2~0_combout\ = ((!\Program_Counter|pout\(2) & ((\Program_Counter|pout\(3)))) # (\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(3)) # (\Program_Counter|pout\(0))))) # (\Program_Counter|pout\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111011111011101111101111101110111110111110111011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \Program_Counter|ALT_INV_pout\(3),
	combout => \UC|Mux2~0_combout\);

\UC|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux3~0_combout\ = (!\Program_Counter|pout\(1) & ((!\Program_Counter|pout\(2) & ((\Program_Counter|pout\(3)))) # (\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(3)) # (\Program_Counter|pout\(0)))))) # (\Program_Counter|pout\(1) & 
-- (\Program_Counter|pout\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011011001100111001101100110011100110110011001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \Program_Counter|ALT_INV_pout\(3),
	combout => \UC|Mux3~0_combout\);

\UC|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux6~0_combout\ = (\Program_Counter|pout\(1) & !\Program_Counter|pout\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	combout => \UC|Mux6~0_combout\);

\ULA_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux6~0_combout\ = (\memory_rom|Mux1~0_combout\ & \UC|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux1~0_combout\,
	datab => \UC|ALT_INV_Mux6~0_combout\,
	combout => \ULA_1|Mux6~0_combout\);

\UC|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux0~0_combout\ = (!\memory_rom|Mux0~0_combout\ & (\memory_rom|Mux2~0_combout\ & \memory_rom|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \memory_rom|ALT_INV_Mux2~0_combout\,
	datac => \memory_rom|ALT_INV_Mux1~0_combout\,
	combout => \UC|Mux0~0_combout\);

\memory_rom|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory_rom|Mux6~0_combout\ = (!\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & \Program_Counter|pout\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	combout => \memory_rom|Mux6~0_combout\);

\ULA_1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux8~0_combout\ = (!\memory_rom|Mux1~0_combout\ & \memory_rom|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux1~0_combout\,
	datab => \memory_rom|ALT_INV_Mux6~0_combout\,
	combout => \ULA_1|Mux8~0_combout\);

\banco_registradores|Reg~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~43_combout\ = (!\Program_Counter|pout\(0) & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2) $ (!\memory_rom|Mux1~0_combout\)))) # (\Program_Counter|pout\(0) & (((\Program_Counter|pout\(2) & 
-- !\memory_rom|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001101100000100100110110000010010011011000001001001101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	combout => \banco_registradores|Reg~43_combout\);

\banco_registradores|Reg~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[3]~3_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~13_q\);

\banco_registradores|Reg~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~27_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~13_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~21_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~13_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~21_q\,
	datad => \banco_registradores|ALT_INV_Reg~13_q\,
	combout => \banco_registradores|Reg~27_combout\);

\banco_registradores|Reg~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[2]~2_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~12_q\);

\banco_registradores|Reg~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~37_combout\ = ( \banco_registradores|Reg~12_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~20_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~12_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~20_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~20_q\,
	datae => \banco_registradores|ALT_INV_Reg~12_q\,
	combout => \banco_registradores|Reg~37_combout\);

\banco_registradores|Reg~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[1]~1_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~11_q\);

\banco_registradores|Reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~31_combout\ = ( \banco_registradores|Reg~11_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~19_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~11_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~19_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~19_q\,
	datae => \banco_registradores|ALT_INV_Reg~11_q\,
	combout => \banco_registradores|Reg~31_combout\);

\banco_registradores|Reg~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[0]~0_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~10_q\);

\banco_registradores|Reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~32_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~10_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~18_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~10_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~18_q\,
	datad => \banco_registradores|ALT_INV_Reg~10_q\,
	combout => \banco_registradores|Reg~32_combout\);

\UC|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux3~1_combout\ = (!\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & (\Program_Counter|pout\(0) & \Program_Counter|pout\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \Program_Counter|ALT_INV_pout\(3),
	combout => \UC|Mux3~1_combout\);

\ULA_1|Add0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~35_cout\ = CARRY(( (!\memory_rom|Mux0~0_combout\ & ((!\memory_rom|Mux2~0_combout\ & (\memory_rom|Mux1~0_combout\ & \UC|Mux3~1_combout\)) # (\memory_rom|Mux2~0_combout\ & (!\memory_rom|Mux1~0_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux2~0_combout\,
	datab => \memory_rom|ALT_INV_Mux0~0_combout\,
	datac => \memory_rom|ALT_INV_Mux1~0_combout\,
	datad => \UC|ALT_INV_Mux3~1_combout\,
	cin => GND,
	cout => \ULA_1|Add0~35_cout\);

\ULA_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~13_sumout\ = SUM(( \ULA_1|Add0~32_combout\ ) + ( \banco_registradores|Reg~32_combout\ ) + ( \ULA_1|Add0~35_cout\ ))
-- \ULA_1|Add0~14\ = CARRY(( \ULA_1|Add0~32_combout\ ) + ( \banco_registradores|Reg~32_combout\ ) + ( \ULA_1|Add0~35_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA_1|ALT_INV_Add0~32_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~32_combout\,
	cin => \ULA_1|Add0~35_cout\,
	sumout => \ULA_1|Add0~13_sumout\,
	cout => \ULA_1|Add0~14\);

\ULA_1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~21_sumout\ = SUM(( \banco_registradores|Reg~30_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~31_combout\)))) ) + ( \ULA_1|Add0~14\ ))
-- \ULA_1|Add0~22\ = CARRY(( \banco_registradores|Reg~30_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~31_combout\)))) ) + ( \ULA_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux3~0_combout\,
	datac => \memory_rom|ALT_INV_Mux0~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~30_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~31_combout\,
	cin => \ULA_1|Add0~14\,
	sumout => \ULA_1|Add0~21_sumout\,
	cout => \ULA_1|Add0~22\);

\ULA_1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux7~0_combout\ = (!\Program_Counter|pout\(1) & (!\memory_rom|Mux1~0_combout\ $ (((!\Program_Counter|pout\(2)) # (\Program_Counter|pout\(0)))))) # (\Program_Counter|pout\(1) & (\Program_Counter|pout\(2) & ((\memory_rom|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010011011001000001001101100100000100110110010000010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	combout => \ULA_1|Mux7~0_combout\);

\multiplexador_2|R[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[1]~2_combout\ = (!\memory_rom|Mux0~0_combout\ & ((!\memory_rom|Mux2~0_combout\ & (\memory_rom|Mux1~0_combout\ & \banco_registradores|Reg~31_combout\)) # (\memory_rom|Mux2~0_combout\ & ((\banco_registradores|Reg~31_combout\) # 
-- (\memory_rom|Mux1~0_combout\))))) # (\memory_rom|Mux0~0_combout\ & (\memory_rom|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100111011000100110011101100010011001110110001001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \memory_rom|ALT_INV_Mux2~0_combout\,
	datac => \memory_rom|ALT_INV_Mux1~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~31_combout\,
	combout => \multiplexador_2|R[1]~2_combout\);

\UC|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux6~1_combout\ = (!\memory_rom|Mux1~0_combout\ & \UC|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux1~0_combout\,
	datab => \UC|ALT_INV_Mux6~0_combout\,
	combout => \UC|Mux6~1_combout\);

\multiplexador_5|R[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[1]~1_combout\ = (!\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~31_combout\))) # (\UC|Mux6~1_combout\ & (\banco_registradores|Reg~30_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores|ALT_INV_Reg~30_combout\,
	datab => \banco_registradores|ALT_INV_Reg~31_combout\,
	datac => \UC|ALT_INV_Mux6~1_combout\,
	combout => \multiplexador_5|R[1]~1_combout\);

\ram_1|memoria~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~34_combout\ = (!\memory_rom|Mux1~0_combout\ & (\memory_rom|Mux6~0_combout\ & \UC|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux1~0_combout\,
	datab => \memory_rom|ALT_INV_Mux6~0_combout\,
	datac => \UC|ALT_INV_Mux6~0_combout\,
	combout => \ram_1|memoria~34_combout\);

\ram_1|memoria~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[1]~1_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~19_q\);

\ram_1|memoria~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~35_combout\ = (!\memory_rom|Mux1~0_combout\ & (!\memory_rom|Mux6~0_combout\ & \UC|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux1~0_combout\,
	datab => \memory_rom|ALT_INV_Mux6~0_combout\,
	datac => \UC|ALT_INV_Mux6~0_combout\,
	combout => \ram_1|memoria~35_combout\);

\ram_1|memoria~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[1]~1_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~11_q\);

\ram_1|memoria~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~27_combout\ = ( \ram_1|memoria~19_q\ & ( \ram_1|memoria~11_q\ ) ) # ( !\ram_1|memoria~19_q\ & ( \ram_1|memoria~11_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~19_q\ & ( !\ram_1|memoria~11_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~19_q\,
	dataf => \ram_1|ALT_INV_memoria~11_q\,
	combout => \ram_1|memoria~27_combout\);

\ram_1|dado_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~27_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(1));

\multiplexador_3|R[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[1]~1_combout\ = ( \UC|Mux0~0_combout\ & ( \ram_1|dado_saida\(1) ) ) # ( !\UC|Mux0~0_combout\ & ( \ram_1|dado_saida\(1) & ( (!\ULA_1|Mux7~0_combout\ & ((!\ULA_1|Mux6~0_combout\ & ((\multiplexador_2|R[1]~2_combout\))) # 
-- (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~21_sumout\)))) ) ) ) # ( !\UC|Mux0~0_combout\ & ( !\ram_1|dado_saida\(1) & ( (!\ULA_1|Mux7~0_combout\ & ((!\ULA_1|Mux6~0_combout\ & ((\multiplexador_2|R[1]~2_combout\))) # (\ULA_1|Mux6~0_combout\ & 
-- (\ULA_1|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000000000000000000000100110001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Add0~21_sumout\,
	datab => \ULA_1|ALT_INV_Mux7~0_combout\,
	datac => \ULA_1|ALT_INV_Mux6~0_combout\,
	datad => \multiplexador_2|ALT_INV_R[1]~2_combout\,
	datae => \UC|ALT_INV_Mux0~0_combout\,
	dataf => \ram_1|ALT_INV_dado_saida\(1),
	combout => \multiplexador_3|R[1]~1_combout\);

\banco_registradores|Reg~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~42_combout\ = (!\Program_Counter|pout\(2) & (\Program_Counter|pout\(0) & (!\Program_Counter|pout\(1) $ (\memory_rom|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	combout => \banco_registradores|Reg~42_combout\);

\banco_registradores|Reg~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[1]~1_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~19_q\);

\banco_registradores|Reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~30_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~11_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~19_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~11_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~19_q\,
	datad => \banco_registradores|ALT_INV_Reg~11_q\,
	combout => \banco_registradores|Reg~30_combout\);

\ULA_1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~25_sumout\ = SUM(( \banco_registradores|Reg~28_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~37_combout\)))) ) + ( \ULA_1|Add0~22\ ))
-- \ULA_1|Add0~26\ = CARRY(( \banco_registradores|Reg~28_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~37_combout\)))) ) + ( \ULA_1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux3~0_combout\,
	datac => \memory_rom|ALT_INV_Mux0~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~28_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~37_combout\,
	cin => \ULA_1|Add0~22\,
	sumout => \ULA_1|Add0~25_sumout\,
	cout => \ULA_1|Add0~26\);

\multiplexador_5|R[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[2]~2_combout\ = (!\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~37_combout\))) # (\UC|Mux6~1_combout\ & (\banco_registradores|Reg~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux6~1_combout\,
	datab => \banco_registradores|ALT_INV_Reg~28_combout\,
	datac => \banco_registradores|ALT_INV_Reg~37_combout\,
	combout => \multiplexador_5|R[2]~2_combout\);

\ram_1|memoria~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[2]~2_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~20_q\);

\ram_1|memoria~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[2]~2_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~12_q\);

\ram_1|memoria~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~28_combout\ = ( \ram_1|memoria~20_q\ & ( \ram_1|memoria~12_q\ ) ) # ( !\ram_1|memoria~20_q\ & ( \ram_1|memoria~12_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~20_q\ & ( !\ram_1|memoria~12_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~20_q\,
	dataf => \ram_1|ALT_INV_memoria~12_q\,
	combout => \ram_1|memoria~28_combout\);

\ram_1|dado_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~28_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(2));

\multiplexador_3|R[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[2]~2_combout\ = (!\UC|Mux0~0_combout\ & (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~25_sumout\))) # (\UC|Mux0~0_combout\ & (((\ram_1|dado_saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~25_sumout\,
	datac => \UC|ALT_INV_Mux0~0_combout\,
	datad => \ram_1|ALT_INV_dado_saida\(2),
	combout => \multiplexador_3|R[2]~2_combout\);

\banco_registradores|Reg~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[2]~2_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~20_q\);

\banco_registradores|Reg~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~28_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~12_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~20_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~12_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~20_q\,
	datad => \banco_registradores|ALT_INV_Reg~12_q\,
	combout => \banco_registradores|Reg~28_combout\);

\ULA_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~1_sumout\ = SUM(( \banco_registradores|Reg~27_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~26_combout\)))) ) + ( \ULA_1|Add0~26\ ))
-- \ULA_1|Add0~2\ = CARRY(( \banco_registradores|Reg~27_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~26_combout\)))) ) + ( \ULA_1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux3~0_combout\,
	datac => \memory_rom|ALT_INV_Mux0~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~27_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~26_combout\,
	cin => \ULA_1|Add0~26\,
	sumout => \ULA_1|Add0~1_sumout\,
	cout => \ULA_1|Add0~2\);

\multiplexador_5|R[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[3]~3_combout\ = (!\UC|Mux6~1_combout\ & (\banco_registradores|Reg~26_combout\)) # (\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux6~1_combout\,
	datab => \banco_registradores|ALT_INV_Reg~26_combout\,
	datac => \banco_registradores|ALT_INV_Reg~27_combout\,
	combout => \multiplexador_5|R[3]~3_combout\);

\ram_1|memoria~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[3]~3_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~21_q\);

\ram_1|memoria~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[3]~3_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~13_q\);

\ram_1|memoria~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~29_combout\ = ( \ram_1|memoria~21_q\ & ( \ram_1|memoria~13_q\ ) ) # ( !\ram_1|memoria~21_q\ & ( \ram_1|memoria~13_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~21_q\ & ( !\ram_1|memoria~13_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~21_q\,
	dataf => \ram_1|ALT_INV_memoria~13_q\,
	combout => \ram_1|memoria~29_combout\);

\ram_1|dado_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~29_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(3));

\multiplexador_3|R[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[3]~3_combout\ = ( \ULA_1|Add0~1_sumout\ & ( \ram_1|dado_saida\(3) & ( (!\Program_Counter|pout\(1) & (\Program_Counter|pout\(2) & (!\Program_Counter|pout\(0) & \memory_rom|Mux1~0_combout\))) # (\Program_Counter|pout\(1) & 
-- (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0)) # (\memory_rom|Mux1~0_combout\)))) ) ) ) # ( !\ULA_1|Add0~1_sumout\ & ( \ram_1|dado_saida\(3) & ( (!\Program_Counter|pout\(0) & ((!\Program_Counter|pout\(1) & (\Program_Counter|pout\(2) & 
-- \memory_rom|Mux1~0_combout\)) # (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & !\memory_rom|Mux1~0_combout\)))) ) ) ) # ( \ULA_1|Add0~1_sumout\ & ( !\ram_1|dado_saida\(3) & ( (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & 
-- ((!\Program_Counter|pout\(0)) # (\memory_rom|Mux1~0_combout\)))) ) ) ) # ( !\ULA_1|Add0~1_sumout\ & ( !\ram_1|dado_saida\(3) & ( (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & (!\Program_Counter|pout\(0) & !\memory_rom|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000100010001000000001000000100000001100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	datae => \ULA_1|ALT_INV_Add0~1_sumout\,
	dataf => \ram_1|ALT_INV_dado_saida\(3),
	combout => \multiplexador_3|R[3]~3_combout\);

\banco_registradores|Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[3]~3_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~21_q\);

\banco_registradores|Reg~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~26_combout\ = ( \banco_registradores|Reg~13_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~21_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~13_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~21_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~21_q\,
	datae => \banco_registradores|ALT_INV_Reg~13_q\,
	combout => \banco_registradores|Reg~26_combout\);

\multiplexador_2|R[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[3]~0_combout\ = ( \banco_registradores|Reg~26_combout\ & ( (!\memory_rom|Mux1~0_combout\ & (!\Program_Counter|pout\(0) & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) # (\memory_rom|Mux1~0_combout\ & 
-- (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2)))) ) ) # ( !\banco_registradores|Reg~26_combout\ & ( (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & (!\Program_Counter|pout\(0) & !\memory_rom|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011000000100010001000000000000000110000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	datae => \banco_registradores|ALT_INV_Reg~26_combout\,
	combout => \multiplexador_2|R[3]~0_combout\);

\multiplexador_2|R[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[0]~1_combout\ = ( \banco_registradores|Reg~29_combout\ & ( (!\Program_Counter|pout\(1) & ((!\Program_Counter|pout\(2) & (\Program_Counter|pout\(0))) # (\Program_Counter|pout\(2) & (!\Program_Counter|pout\(0) & 
-- !\memory_rom|Mux1~0_combout\)))) # (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & ((\memory_rom|Mux1~0_combout\)))) ) ) # ( !\banco_registradores|Reg~29_combout\ & ( (!\Program_Counter|pout\(1) & (!\Program_Counter|pout\(2) & 
-- \Program_Counter|pout\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001010000100110000001000000010000010100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	datae => \banco_registradores|ALT_INV_Reg~29_combout\,
	combout => \multiplexador_2|R[0]~1_combout\);

\ULA_1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|LessThan1~0_combout\ = ( \banco_registradores|Reg~31_combout\ & ( !\banco_registradores|Reg~32_combout\ & ( !\banco_registradores|Reg~30_combout\ $ ((((!\memory_rom|Mux0~0_combout\ & \memory_rom|Mux1~0_combout\)) # (\memory_rom|Mux2~0_combout\))) ) 
-- ) ) # ( !\banco_registradores|Reg~31_combout\ & ( !\banco_registradores|Reg~32_combout\ & ( !\banco_registradores|Reg~30_combout\ $ (((\memory_rom|Mux2~0_combout\ & ((\memory_rom|Mux1~0_combout\) # (\memory_rom|Mux0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000010011110001000011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \memory_rom|ALT_INV_Mux2~0_combout\,
	datac => \memory_rom|ALT_INV_Mux1~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~30_combout\,
	datae => \banco_registradores|ALT_INV_Reg~31_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~32_combout\,
	combout => \ULA_1|LessThan1~0_combout\);

\ULA_1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|LessThan1~1_combout\ = ( \banco_registradores|Reg~31_combout\ & ( (!\banco_registradores|Reg~30_combout\ & (((!\memory_rom|Mux0~0_combout\ & \memory_rom|Mux1~0_combout\)) # (\memory_rom|Mux2~0_combout\))) ) ) # ( 
-- !\banco_registradores|Reg~31_combout\ & ( (\memory_rom|Mux2~0_combout\ & (!\banco_registradores|Reg~30_combout\ & ((\memory_rom|Mux1~0_combout\) # (\memory_rom|Mux0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000001110110000000000010011000000000011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \memory_rom|ALT_INV_Mux2~0_combout\,
	datac => \memory_rom|ALT_INV_Mux1~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~30_combout\,
	datae => \banco_registradores|ALT_INV_Reg~31_combout\,
	combout => \ULA_1|LessThan1~1_combout\);

\ULA_1|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|LessThan1~2_combout\ = ( \ULA_1|LessThan1~0_combout\ & ( \ULA_1|LessThan1~1_combout\ & ( (!\multiplexador_2|R[3]~0_combout\ & (!\banco_registradores|Reg~27_combout\ & !\banco_registradores|Reg~28_combout\)) # (\multiplexador_2|R[3]~0_combout\ & 
-- ((!\banco_registradores|Reg~27_combout\) # (!\banco_registradores|Reg~28_combout\))) ) ) ) # ( !\ULA_1|LessThan1~0_combout\ & ( \ULA_1|LessThan1~1_combout\ & ( (!\multiplexador_2|R[3]~0_combout\ & (!\banco_registradores|Reg~27_combout\ & 
-- !\banco_registradores|Reg~28_combout\)) # (\multiplexador_2|R[3]~0_combout\ & ((!\banco_registradores|Reg~27_combout\) # (!\banco_registradores|Reg~28_combout\))) ) ) ) # ( \ULA_1|LessThan1~0_combout\ & ( !\ULA_1|LessThan1~1_combout\ & ( 
-- (!\multiplexador_2|R[3]~0_combout\ & (!\banco_registradores|Reg~27_combout\ & (!\banco_registradores|Reg~28_combout\ & \multiplexador_2|R[0]~1_combout\))) # (\multiplexador_2|R[3]~0_combout\ & ((!\banco_registradores|Reg~27_combout\) # 
-- ((!\banco_registradores|Reg~28_combout\ & \multiplexador_2|R[0]~1_combout\)))) ) ) ) # ( !\ULA_1|LessThan1~0_combout\ & ( !\ULA_1|LessThan1~1_combout\ & ( (\multiplexador_2|R[3]~0_combout\ & !\banco_registradores|Reg~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001001101010011010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador_2|ALT_INV_R[3]~0_combout\,
	datab => \banco_registradores|ALT_INV_Reg~27_combout\,
	datac => \banco_registradores|ALT_INV_Reg~28_combout\,
	datad => \multiplexador_2|ALT_INV_R[0]~1_combout\,
	datae => \ULA_1|ALT_INV_LessThan1~0_combout\,
	dataf => \ULA_1|ALT_INV_LessThan1~1_combout\,
	combout => \ULA_1|LessThan1~2_combout\);

\banco_registradores|Reg~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[5]~5_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~15_q\);

\banco_registradores|Reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~34_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~15_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~23_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~15_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~23_q\,
	datad => \banco_registradores|ALT_INV_Reg~15_q\,
	combout => \banco_registradores|Reg~34_combout\);

\banco_registradores|Reg~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~39_combout\ = ( \banco_registradores|Reg~15_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~23_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~15_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~23_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~23_q\,
	datae => \banco_registradores|ALT_INV_Reg~15_q\,
	combout => \banco_registradores|Reg~39_combout\);

\banco_registradores|Reg~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[4]~4_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~14_q\);

\banco_registradores|Reg~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~38_combout\ = ( \banco_registradores|Reg~14_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~22_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~14_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~22_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~22_q\,
	datae => \banco_registradores|ALT_INV_Reg~14_q\,
	combout => \banco_registradores|Reg~38_combout\);

\ULA_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~5_sumout\ = SUM(( \banco_registradores|Reg~33_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~38_combout\)))) ) + ( \ULA_1|Add0~2\ ))
-- \ULA_1|Add0~6\ = CARRY(( \banco_registradores|Reg~33_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~38_combout\)))) ) + ( \ULA_1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux3~0_combout\,
	datac => \memory_rom|ALT_INV_Mux0~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~33_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~38_combout\,
	cin => \ULA_1|Add0~2\,
	sumout => \ULA_1|Add0~5_sumout\,
	cout => \ULA_1|Add0~6\);

\multiplexador_5|R[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[4]~4_combout\ = (!\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~38_combout\))) # (\UC|Mux6~1_combout\ & (\banco_registradores|Reg~33_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux6~1_combout\,
	datab => \banco_registradores|ALT_INV_Reg~33_combout\,
	datac => \banco_registradores|ALT_INV_Reg~38_combout\,
	combout => \multiplexador_5|R[4]~4_combout\);

\ram_1|memoria~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[4]~4_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~22_q\);

\ram_1|memoria~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[4]~4_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~14_q\);

\ram_1|memoria~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~30_combout\ = ( \ram_1|memoria~22_q\ & ( \ram_1|memoria~14_q\ ) ) # ( !\ram_1|memoria~22_q\ & ( \ram_1|memoria~14_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~22_q\ & ( !\ram_1|memoria~14_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~22_q\,
	dataf => \ram_1|ALT_INV_memoria~14_q\,
	combout => \ram_1|memoria~30_combout\);

\ram_1|dado_saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~30_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(4));

\multiplexador_3|R[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[4]~4_combout\ = (!\UC|Mux0~0_combout\ & (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~5_sumout\))) # (\UC|Mux0~0_combout\ & (((\ram_1|dado_saida\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~5_sumout\,
	datac => \UC|ALT_INV_Mux0~0_combout\,
	datad => \ram_1|ALT_INV_dado_saida\(4),
	combout => \multiplexador_3|R[4]~4_combout\);

\banco_registradores|Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[4]~4_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~22_q\);

\banco_registradores|Reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~33_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~14_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~22_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~14_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~22_q\,
	datad => \banco_registradores|ALT_INV_Reg~14_q\,
	combout => \banco_registradores|Reg~33_combout\);

\ULA_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~17_sumout\ = SUM(( \banco_registradores|Reg~34_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~39_combout\)))) ) + ( \ULA_1|Add0~6\ ))
-- \ULA_1|Add0~18\ = CARRY(( \banco_registradores|Reg~34_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~39_combout\)))) ) + ( \ULA_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux3~0_combout\,
	datac => \memory_rom|ALT_INV_Mux0~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~34_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~39_combout\,
	cin => \ULA_1|Add0~6\,
	sumout => \ULA_1|Add0~17_sumout\,
	cout => \ULA_1|Add0~18\);

\multiplexador_5|R[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[5]~5_combout\ = (!\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~39_combout\))) # (\UC|Mux6~1_combout\ & (\banco_registradores|Reg~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux6~1_combout\,
	datab => \banco_registradores|ALT_INV_Reg~34_combout\,
	datac => \banco_registradores|ALT_INV_Reg~39_combout\,
	combout => \multiplexador_5|R[5]~5_combout\);

\ram_1|memoria~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[5]~5_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~23_q\);

\ram_1|memoria~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[5]~5_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~15_q\);

\ram_1|memoria~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~31_combout\ = ( \ram_1|memoria~23_q\ & ( \ram_1|memoria~15_q\ ) ) # ( !\ram_1|memoria~23_q\ & ( \ram_1|memoria~15_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~23_q\ & ( !\ram_1|memoria~15_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~23_q\,
	dataf => \ram_1|ALT_INV_memoria~15_q\,
	combout => \ram_1|memoria~31_combout\);

\ram_1|dado_saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~31_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(5));

\multiplexador_3|R[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[5]~5_combout\ = (!\UC|Mux0~0_combout\ & (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~17_sumout\))) # (\UC|Mux0~0_combout\ & (((\ram_1|dado_saida\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~17_sumout\,
	datac => \UC|ALT_INV_Mux0~0_combout\,
	datad => \ram_1|ALT_INV_dado_saida\(5),
	combout => \multiplexador_3|R[5]~5_combout\);

\banco_registradores|Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[5]~5_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~23_q\);

\ULA_1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux8~1_combout\ = ( !\banco_registradores|Reg~22_q\ & ( \banco_registradores|Reg~14_q\ & ( (!\Program_Counter|pout\(2) & (\Program_Counter|pout\(0) & !\banco_registradores|Reg~23_q\)) ) ) ) # ( \banco_registradores|Reg~22_q\ & ( 
-- !\banco_registradores|Reg~14_q\ & ( (!\banco_registradores|Reg~15_q\ & ((!\Program_Counter|pout\(0)) # (\Program_Counter|pout\(2)))) ) ) ) # ( !\banco_registradores|Reg~22_q\ & ( !\banco_registradores|Reg~14_q\ & ( (!\Program_Counter|pout\(2) & 
-- ((!\Program_Counter|pout\(0) & ((!\banco_registradores|Reg~15_q\))) # (\Program_Counter|pout\(0) & (!\banco_registradores|Reg~23_q\)))) # (\Program_Counter|pout\(2) & (((!\banco_registradores|Reg~15_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100100000110111010000000000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~23_q\,
	datad => \banco_registradores|ALT_INV_Reg~15_q\,
	datae => \banco_registradores|ALT_INV_Reg~22_q\,
	dataf => \banco_registradores|ALT_INV_Reg~14_q\,
	combout => \ULA_1|Mux8~1_combout\);

\banco_registradores|Reg~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[7]~7_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~17_q\);

\banco_registradores|Reg~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~36_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~17_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~25_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~17_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~25_q\,
	datad => \banco_registradores|ALT_INV_Reg~17_q\,
	combout => \banco_registradores|Reg~36_combout\);

\banco_registradores|Reg~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~41_combout\ = ( \banco_registradores|Reg~17_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~25_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~17_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~25_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~25_q\,
	datae => \banco_registradores|ALT_INV_Reg~17_q\,
	combout => \banco_registradores|Reg~41_combout\);

\banco_registradores|Reg~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[6]~6_combout\,
	ena => \banco_registradores|Reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~16_q\);

\banco_registradores|Reg~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~40_combout\ = ( \banco_registradores|Reg~16_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~24_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~16_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~24_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~24_q\,
	datae => \banco_registradores|ALT_INV_Reg~16_q\,
	combout => \banco_registradores|Reg~40_combout\);

\ULA_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~9_sumout\ = SUM(( \banco_registradores|Reg~35_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~40_combout\)))) ) + ( \ULA_1|Add0~18\ ))
-- \ULA_1|Add0~10\ = CARRY(( \banco_registradores|Reg~35_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~40_combout\)))) ) + ( \ULA_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux3~0_combout\,
	datac => \memory_rom|ALT_INV_Mux0~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~35_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~40_combout\,
	cin => \ULA_1|Add0~18\,
	sumout => \ULA_1|Add0~9_sumout\,
	cout => \ULA_1|Add0~10\);

\ULA_1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~29_sumout\ = SUM(( \banco_registradores|Reg~36_combout\ ) + ( (\UC|Mux2~0_combout\ & (!\memory_rom|Mux0~0_combout\ & (!\UC|Mux3~0_combout\ $ (!\banco_registradores|Reg~41_combout\)))) ) + ( \ULA_1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux2~0_combout\,
	datab => \memory_rom|ALT_INV_Mux0~0_combout\,
	datac => \UC|ALT_INV_Mux3~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~36_combout\,
	dataf => \banco_registradores|ALT_INV_Reg~41_combout\,
	cin => \ULA_1|Add0~10\,
	sumout => \ULA_1|Add0~29_sumout\);

\multiplexador_5|R[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[7]~7_combout\ = (!\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~41_combout\))) # (\UC|Mux6~1_combout\ & (\banco_registradores|Reg~36_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux6~1_combout\,
	datab => \banco_registradores|ALT_INV_Reg~36_combout\,
	datac => \banco_registradores|ALT_INV_Reg~41_combout\,
	combout => \multiplexador_5|R[7]~7_combout\);

\ram_1|memoria~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[7]~7_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~25_q\);

\ram_1|memoria~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[7]~7_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~17_q\);

\ram_1|memoria~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~33_combout\ = ( \ram_1|memoria~25_q\ & ( \ram_1|memoria~17_q\ ) ) # ( !\ram_1|memoria~25_q\ & ( \ram_1|memoria~17_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~25_q\ & ( !\ram_1|memoria~17_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~25_q\,
	dataf => \ram_1|ALT_INV_memoria~17_q\,
	combout => \ram_1|memoria~33_combout\);

\ram_1|dado_saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~33_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(7));

\multiplexador_3|R[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[7]~7_combout\ = (!\UC|Mux0~0_combout\ & (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~29_sumout\))) # (\UC|Mux0~0_combout\ & (((\ram_1|dado_saida\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~29_sumout\,
	datac => \UC|ALT_INV_Mux0~0_combout\,
	datad => \ram_1|ALT_INV_dado_saida\(7),
	combout => \multiplexador_3|R[7]~7_combout\);

\banco_registradores|Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[7]~7_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~25_q\);

\ULA_1|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux8~2_combout\ = ( !\banco_registradores|Reg~24_q\ & ( \banco_registradores|Reg~16_q\ & ( (!\Program_Counter|pout\(2) & (\Program_Counter|pout\(0) & !\banco_registradores|Reg~25_q\)) ) ) ) # ( \banco_registradores|Reg~24_q\ & ( 
-- !\banco_registradores|Reg~16_q\ & ( (!\banco_registradores|Reg~17_q\ & ((!\Program_Counter|pout\(0)) # (\Program_Counter|pout\(2)))) ) ) ) # ( !\banco_registradores|Reg~24_q\ & ( !\banco_registradores|Reg~16_q\ & ( (!\Program_Counter|pout\(2) & 
-- ((!\Program_Counter|pout\(0) & ((!\banco_registradores|Reg~17_q\))) # (\Program_Counter|pout\(0) & (!\banco_registradores|Reg~25_q\)))) # (\Program_Counter|pout\(2) & (((!\banco_registradores|Reg~17_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100100000110111010000000000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~25_q\,
	datad => \banco_registradores|ALT_INV_Reg~17_q\,
	datae => \banco_registradores|ALT_INV_Reg~24_q\,
	dataf => \banco_registradores|ALT_INV_Reg~16_q\,
	combout => \ULA_1|Mux8~2_combout\);

\ULA_1|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux8~3_combout\ = ( \ULA_1|Mux8~1_combout\ & ( \ULA_1|Mux8~2_combout\ & ( (\memory_rom|Mux1~0_combout\ & ((!\Program_Counter|pout\(1) & ((!\Program_Counter|pout\(2)) # (\Program_Counter|pout\(0)))) # (\Program_Counter|pout\(1) & 
-- (\Program_Counter|pout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \memory_rom|ALT_INV_Mux1~0_combout\,
	datae => \ULA_1|ALT_INV_Mux8~1_combout\,
	dataf => \ULA_1|ALT_INV_Mux8~2_combout\,
	combout => \ULA_1|Mux8~3_combout\);

\ULA_1|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux8~4_combout\ = (\ULA_1|LessThan1~2_combout\ & \ULA_1|Mux8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_LessThan1~2_combout\,
	datab => \ULA_1|ALT_INV_Mux8~3_combout\,
	combout => \ULA_1|Mux8~4_combout\);

\multiplexador_5|R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[0]~0_combout\ = (!\UC|Mux6~1_combout\ & (\banco_registradores|Reg~29_combout\)) # (\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_registradores|ALT_INV_Reg~29_combout\,
	datab => \banco_registradores|ALT_INV_Reg~32_combout\,
	datac => \UC|ALT_INV_Mux6~1_combout\,
	combout => \multiplexador_5|R[0]~0_combout\);

\ram_1|memoria~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[0]~0_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~18_q\);

\ram_1|memoria~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[0]~0_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~10_q\);

\ram_1|memoria~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~26_combout\ = ( \ram_1|memoria~18_q\ & ( \ram_1|memoria~10_q\ ) ) # ( !\ram_1|memoria~18_q\ & ( \ram_1|memoria~10_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~18_q\ & ( !\ram_1|memoria~10_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~18_q\,
	dataf => \ram_1|ALT_INV_memoria~10_q\,
	combout => \ram_1|memoria~26_combout\);

\ram_1|dado_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~26_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(0));

\multiplexador_3|R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[0]~0_combout\ = ( \ram_1|dado_saida\(0) & ( \UC|Mux0~0_combout\ ) ) # ( \ram_1|dado_saida\(0) & ( !\UC|Mux0~0_combout\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) ) 
-- # ( !\ram_1|dado_saida\(0) & ( !\UC|Mux0~0_combout\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_dado_saida\(0),
	dataf => \UC|ALT_INV_Mux0~0_combout\,
	combout => \multiplexador_3|R[0]~0_combout\);

\banco_registradores|Reg~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[0]~0_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~18_q\);

\banco_registradores|Reg~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~29_combout\ = ( \banco_registradores|Reg~10_q\ & ( ((!\Program_Counter|pout\(1) $ (\Program_Counter|pout\(2))) # (\banco_registradores|Reg~18_q\)) # (\Program_Counter|pout\(0)) ) ) # ( !\banco_registradores|Reg~10_q\ & ( 
-- (!\Program_Counter|pout\(0) & (\banco_registradores|Reg~18_q\ & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000100111111111111100000000011000001001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	datad => \banco_registradores|ALT_INV_Reg~18_q\,
	datae => \banco_registradores|ALT_INV_Reg~10_q\,
	combout => \banco_registradores|Reg~29_combout\);

\ULA_1|Add0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Add0~32_combout\ = (!\memory_rom|Mux0~0_combout\ & (!\banco_registradores|Reg~29_combout\ $ (((!\memory_rom|Mux2~0_combout\) # (\memory_rom|Mux1~0_combout\))))) # (\memory_rom|Mux0~0_combout\ & (((\banco_registradores|Reg~29_combout\) # 
-- (\memory_rom|Mux1~0_combout\)) # (\memory_rom|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111011111001101011101111100110101110111110011010111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \memory_rom|ALT_INV_Mux2~0_combout\,
	datac => \memory_rom|ALT_INV_Mux1~0_combout\,
	datad => \banco_registradores|ALT_INV_Reg~29_combout\,
	combout => \ULA_1|Add0~32_combout\);

\multiplexador_5|R[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_5|R[6]~6_combout\ = (!\UC|Mux6~1_combout\ & ((\banco_registradores|Reg~40_combout\))) # (\UC|Mux6~1_combout\ & (\banco_registradores|Reg~35_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux6~1_combout\,
	datab => \banco_registradores|ALT_INV_Reg~35_combout\,
	datac => \banco_registradores|ALT_INV_Reg~40_combout\,
	combout => \multiplexador_5|R[6]~6_combout\);

\ram_1|memoria~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[6]~6_combout\,
	ena => \ram_1|memoria~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~24_q\);

\ram_1|memoria~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_5|R[6]~6_combout\,
	ena => \ram_1|memoria~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|memoria~16_q\);

\ram_1|memoria~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_1|memoria~32_combout\ = ( \ram_1|memoria~24_q\ & ( \ram_1|memoria~16_q\ ) ) # ( !\ram_1|memoria~24_q\ & ( \ram_1|memoria~16_q\ & ( (!\ULA_1|Mux8~0_combout\ & (!\ULA_1|Mux8~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # (!\ULA_1|Add0~13_sumout\)))) ) ) ) # 
-- ( \ram_1|memoria~24_q\ & ( !\ram_1|memoria~16_q\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|Mux8~4_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111100000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Mux8~4_combout\,
	datae => \ram_1|ALT_INV_memoria~24_q\,
	dataf => \ram_1|ALT_INV_memoria~16_q\,
	combout => \ram_1|memoria~32_combout\);

\ram_1|dado_saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ram_1|memoria~32_combout\,
	ena => \UC|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_1|dado_saida\(6));

\multiplexador_3|R[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_3|R[6]~6_combout\ = (!\UC|Mux0~0_combout\ & (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~9_sumout\))) # (\UC|Mux0~0_combout\ & (((\ram_1|dado_saida\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~9_sumout\,
	datac => \UC|ALT_INV_Mux0~0_combout\,
	datad => \ram_1|ALT_INV_dado_saida\(6),
	combout => \multiplexador_3|R[6]~6_combout\);

\banco_registradores|Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_3|R[6]~6_combout\,
	ena => \banco_registradores|Reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_registradores|Reg~24_q\);

\banco_registradores|Reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_registradores|Reg~35_combout\ = (!\Program_Counter|pout\(2) & ((!\Program_Counter|pout\(0) & ((\banco_registradores|Reg~16_q\))) # (\Program_Counter|pout\(0) & (\banco_registradores|Reg~24_q\)))) # (\Program_Counter|pout\(2) & 
-- (((\banco_registradores|Reg~16_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \banco_registradores|ALT_INV_Reg~24_q\,
	datad => \banco_registradores|ALT_INV_Reg~16_q\,
	combout => \banco_registradores|Reg~35_combout\);

\ULA_1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Equal0~5_combout\ = ( \ULA_1|Add0~1_sumout\ & ( (!\Program_Counter|pout\(2) & \Program_Counter|pout\(1)) ) ) # ( !\ULA_1|Add0~1_sumout\ & ( (!\Program_Counter|pout\(2) & (\Program_Counter|pout\(1) & ((\ULA_1|Add0~5_sumout\) # 
-- (\ULA_1|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010001000100010001000000010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(1),
	datac => \ULA_1|ALT_INV_Add0~9_sumout\,
	datad => \ULA_1|ALT_INV_Add0~5_sumout\,
	datae => \ULA_1|ALT_INV_Add0~1_sumout\,
	combout => \ULA_1|Equal0~5_combout\);

\ULA_1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Equal0~0_combout\ = ( !\ULA_1|LessThan1~2_combout\ & ( \ULA_1|Mux8~3_combout\ & ( (!\ULA_1|Mux8~0_combout\ & ((!\ULA_1|Mux6~0_combout\) # ((!\ULA_1|Add0~13_sumout\ & !\ULA_1|Add0~17_sumout\)))) ) ) ) # ( \ULA_1|LessThan1~2_combout\ & ( 
-- !\ULA_1|Mux8~3_combout\ & ( (!\ULA_1|Mux8~0_combout\ & ((!\ULA_1|Mux6~0_combout\) # ((!\ULA_1|Add0~13_sumout\ & !\ULA_1|Add0~17_sumout\)))) ) ) ) # ( !\ULA_1|LessThan1~2_combout\ & ( !\ULA_1|Mux8~3_combout\ & ( (!\ULA_1|Mux8~0_combout\ & 
-- ((!\ULA_1|Mux6~0_combout\) # ((!\ULA_1|Add0~13_sumout\ & !\ULA_1|Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100000111000001010000011100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_Add0~17_sumout\,
	datae => \ULA_1|ALT_INV_LessThan1~2_combout\,
	dataf => \ULA_1|ALT_INV_Mux8~3_combout\,
	combout => \ULA_1|Equal0~0_combout\);

\ULA_1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Equal0~1_combout\ = ( \ULA_1|Add0~25_sumout\ & ( \ULA_1|Add0~29_sumout\ & ( (!\ULA_1|Mux6~0_combout\ & ((!\multiplexador_2|R[1]~2_combout\) # (\ULA_1|Mux7~0_combout\))) ) ) ) # ( !\ULA_1|Add0~25_sumout\ & ( \ULA_1|Add0~29_sumout\ & ( 
-- (!\ULA_1|Mux6~0_combout\ & ((!\multiplexador_2|R[1]~2_combout\) # (\ULA_1|Mux7~0_combout\))) ) ) ) # ( \ULA_1|Add0~25_sumout\ & ( !\ULA_1|Add0~29_sumout\ & ( (!\ULA_1|Mux6~0_combout\ & ((!\multiplexador_2|R[1]~2_combout\) # (\ULA_1|Mux7~0_combout\))) ) ) 
-- ) # ( !\ULA_1|Add0~25_sumout\ & ( !\ULA_1|Add0~29_sumout\ & ( ((!\ULA_1|Mux6~0_combout\ & ((!\multiplexador_2|R[1]~2_combout\))) # (\ULA_1|Mux6~0_combout\ & (!\ULA_1|Add0~21_sumout\))) # (\ULA_1|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100111011111100000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Add0~21_sumout\,
	datab => \ULA_1|ALT_INV_Mux7~0_combout\,
	datac => \ULA_1|ALT_INV_Mux6~0_combout\,
	datad => \multiplexador_2|ALT_INV_R[1]~2_combout\,
	datae => \ULA_1|ALT_INV_Add0~25_sumout\,
	dataf => \ULA_1|ALT_INV_Add0~29_sumout\,
	combout => \ULA_1|Equal0~1_combout\);

\add_pc_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~1_sumout\ = SUM(( \Program_Counter|pout\(0) ) + ( VCC ) + ( !VCC ))
-- \add_pc_1|Add0~2\ = CARRY(( \Program_Counter|pout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(0),
	cin => GND,
	sumout => \add_pc_1|Add0~1_sumout\,
	cout => \add_pc_1|Add0~2\);

\add_pc_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~5_sumout\ = SUM(( \Program_Counter|pout\(1) ) + ( GND ) + ( \add_pc_1|Add0~2\ ))
-- \add_pc_1|Add0~6\ = CARRY(( \Program_Counter|pout\(1) ) + ( GND ) + ( \add_pc_1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(1),
	cin => \add_pc_1|Add0~2\,
	sumout => \add_pc_1|Add0~5_sumout\,
	cout => \add_pc_1|Add0~6\);

\add_pc_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~9_sumout\ = SUM(( \Program_Counter|pout\(2) ) + ( GND ) + ( \add_pc_1|Add0~6\ ))
-- \add_pc_1|Add0~10\ = CARRY(( \Program_Counter|pout\(2) ) + ( GND ) + ( \add_pc_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(2),
	cin => \add_pc_1|Add0~6\,
	sumout => \add_pc_1|Add0~9_sumout\,
	cout => \add_pc_1|Add0~10\);

\add_pc_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~13_sumout\ = SUM(( \Program_Counter|pout\(3) ) + ( GND ) + ( \add_pc_1|Add0~10\ ))
-- \add_pc_1|Add0~14\ = CARRY(( \Program_Counter|pout\(3) ) + ( GND ) + ( \add_pc_1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(3),
	cin => \add_pc_1|Add0~10\,
	sumout => \add_pc_1|Add0~13_sumout\,
	cout => \add_pc_1|Add0~14\);

\multiplexador_4|R[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[3]~3_combout\ = (\add_pc_1|Add0~13_sumout\ & ((!\memory_rom|Mux2~0_combout\) # (\memory_rom|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux2~0_combout\,
	datab => \memory_rom|ALT_INV_Mux1~0_combout\,
	datac => \add_pc_1|ALT_INV_Add0~13_sumout\,
	combout => \multiplexador_4|R[3]~3_combout\);

\multiplexador_4|R[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[3]~4_combout\ = ( \add_pc_1|Add0~13_sumout\ & ( \multiplexador_4|R[3]~3_combout\ ) ) # ( !\add_pc_1|Add0~13_sumout\ & ( \multiplexador_4|R[3]~3_combout\ ) ) # ( \add_pc_1|Add0~13_sumout\ & ( !\multiplexador_4|R[3]~3_combout\ & ( 
-- (!\memory_rom|Mux0~0_combout\ & (((!\ULA_1|Equal0~0_combout\) # (!\ULA_1|Equal0~1_combout\)) # (\ULA_1|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \ULA_1|ALT_INV_Equal0~5_combout\,
	datac => \ULA_1|ALT_INV_Equal0~0_combout\,
	datad => \ULA_1|ALT_INV_Equal0~1_combout\,
	datae => \add_pc_1|ALT_INV_Add0~13_sumout\,
	dataf => \multiplexador_4|ALT_INV_R[3]~3_combout\,
	combout => \multiplexador_4|R[3]~4_combout\);

\Program_Counter|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(3));

\memory_rom|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory_rom|Mux1~0_combout\ = (((\Program_Counter|pout\(0) & \Program_Counter|pout\(2))) # (\Program_Counter|pout\(3))) # (\Program_Counter|pout\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(0),
	datab => \Program_Counter|ALT_INV_pout\(1),
	datac => \Program_Counter|ALT_INV_pout\(2),
	datad => \Program_Counter|ALT_INV_pout\(3),
	combout => \memory_rom|Mux1~0_combout\);

\UC|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux4~0_combout\ = (\memory_rom|Mux2~0_combout\ & !\memory_rom|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux2~0_combout\,
	datab => \memory_rom|ALT_INV_Mux1~0_combout\,
	combout => \UC|Mux4~0_combout\);

\multiplexador_4|R[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[2]~2_combout\ = ( \ULA_1|Equal0~1_combout\ & ( \add_pc_1|Add0~9_sumout\ & ( (!\UC|Mux4~0_combout\) # ((!\memory_rom|Mux0~0_combout\ & ((!\ULA_1|Equal0~0_combout\) # (\ULA_1|Equal0~5_combout\)))) ) ) ) # ( !\ULA_1|Equal0~1_combout\ & ( 
-- \add_pc_1|Add0~9_sumout\ & ( (!\memory_rom|Mux0~0_combout\) # (!\UC|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101110111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux4~0_combout\,
	datac => \ULA_1|ALT_INV_Equal0~5_combout\,
	datad => \ULA_1|ALT_INV_Equal0~0_combout\,
	datae => \ULA_1|ALT_INV_Equal0~1_combout\,
	dataf => \add_pc_1|ALT_INV_Add0~9_sumout\,
	combout => \multiplexador_4|R[2]~2_combout\);

\Program_Counter|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(2));

\memory_rom|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory_rom|Mux2~0_combout\ = (!\Program_Counter|pout\(1) & (\Program_Counter|pout\(2) & !\Program_Counter|pout\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	combout => \memory_rom|Mux2~0_combout\);

\multiplexador_4|R[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[1]~1_combout\ = ( \ULA_1|Equal0~1_combout\ & ( \add_pc_1|Add0~5_sumout\ & ( ((!\UC|Mux4~1_combout\) # ((!\ULA_1|Equal0~0_combout\) # (\ULA_1|Equal0~5_combout\))) # (\memory_rom|Mux2~0_combout\) ) ) ) # ( !\ULA_1|Equal0~1_combout\ & ( 
-- \add_pc_1|Add0~5_sumout\ ) ) # ( \ULA_1|Equal0~1_combout\ & ( !\add_pc_1|Add0~5_sumout\ & ( (\memory_rom|Mux2~0_combout\ & (\UC|Mux4~1_combout\ & (!\ULA_1|Equal0~5_combout\ & \ULA_1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux2~0_combout\,
	datab => \UC|ALT_INV_Mux4~1_combout\,
	datac => \ULA_1|ALT_INV_Equal0~5_combout\,
	datad => \ULA_1|ALT_INV_Equal0~0_combout\,
	datae => \ULA_1|ALT_INV_Equal0~1_combout\,
	dataf => \add_pc_1|ALT_INV_Add0~5_sumout\,
	combout => \multiplexador_4|R[1]~1_combout\);

\Program_Counter|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(1));

\memory_rom|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory_rom|Mux0~0_combout\ = (!\Program_Counter|pout\(1) & ((!\Program_Counter|pout\(2)) # (\Program_Counter|pout\(0)))) # (\Program_Counter|pout\(1) & (\Program_Counter|pout\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101110011011100110111001101110011011100110111001101110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	combout => \memory_rom|Mux0~0_combout\);

\UC|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Mux4~1_combout\ = (!\memory_rom|Mux0~0_combout\ & \UC|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux4~0_combout\,
	combout => \UC|Mux4~1_combout\);

\multiplexador_4|R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[0]~0_combout\ = ( \ULA_1|Equal0~1_combout\ & ( \add_pc_1|Add0~1_sumout\ & ( (!\UC|Mux4~1_combout\) # (((!\ULA_1|Equal0~0_combout\) # (\ULA_1|Equal0~5_combout\)) # (\memory_rom|Mux6~0_combout\)) ) ) ) # ( !\ULA_1|Equal0~1_combout\ & ( 
-- \add_pc_1|Add0~1_sumout\ ) ) # ( \ULA_1|Equal0~1_combout\ & ( !\add_pc_1|Add0~1_sumout\ & ( (\UC|Mux4~1_combout\ & (\memory_rom|Mux6~0_combout\ & (!\ULA_1|Equal0~5_combout\ & \ULA_1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000011111111111111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux4~1_combout\,
	datab => \memory_rom|ALT_INV_Mux6~0_combout\,
	datac => \ULA_1|ALT_INV_Equal0~5_combout\,
	datad => \ULA_1|ALT_INV_Equal0~0_combout\,
	datae => \ULA_1|ALT_INV_Equal0~1_combout\,
	dataf => \add_pc_1|ALT_INV_Add0~1_sumout\,
	combout => \multiplexador_4|R[0]~0_combout\);

\Program_Counter|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(4));

\add_pc_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~17_sumout\ = SUM(( \Program_Counter|pout\(4) ) + ( GND ) + ( \add_pc_1|Add0~14\ ))
-- \add_pc_1|Add0~18\ = CARRY(( \Program_Counter|pout\(4) ) + ( GND ) + ( \add_pc_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(4),
	cin => \add_pc_1|Add0~14\,
	sumout => \add_pc_1|Add0~17_sumout\,
	cout => \add_pc_1|Add0~18\);

\multiplexador_4|R[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[4]~5_combout\ = ( \add_pc_1|Add0~17_sumout\ & ( (!\UC|Mux4~1_combout\) # (((!\ULA_1|Equal0~0_combout\) # (!\ULA_1|Equal0~1_combout\)) # (\ULA_1|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000000001111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Mux4~1_combout\,
	datab => \ULA_1|ALT_INV_Equal0~5_combout\,
	datac => \ULA_1|ALT_INV_Equal0~0_combout\,
	datad => \ULA_1|ALT_INV_Equal0~1_combout\,
	datae => \add_pc_1|ALT_INV_Add0~17_sumout\,
	combout => \multiplexador_4|R[4]~5_combout\);

\Program_Counter|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(5));

\add_pc_1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~21_sumout\ = SUM(( \Program_Counter|pout\(5) ) + ( GND ) + ( \add_pc_1|Add0~18\ ))
-- \add_pc_1|Add0~22\ = CARRY(( \Program_Counter|pout\(5) ) + ( GND ) + ( \add_pc_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(5),
	cin => \add_pc_1|Add0~18\,
	sumout => \add_pc_1|Add0~21_sumout\,
	cout => \add_pc_1|Add0~22\);

\multiplexador_4|R[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[5]~6_combout\ = ( \ULA_1|Equal0~1_combout\ & ( \add_pc_1|Add0~21_sumout\ & ( (!\UC|Mux4~0_combout\) # ((!\memory_rom|Mux0~0_combout\ & ((!\ULA_1|Equal0~0_combout\) # (\ULA_1|Equal0~5_combout\)))) ) ) ) # ( !\ULA_1|Equal0~1_combout\ & ( 
-- \add_pc_1|Add0~21_sumout\ & ( (!\memory_rom|Mux0~0_combout\) # (!\UC|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101110111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux4~0_combout\,
	datac => \ULA_1|ALT_INV_Equal0~5_combout\,
	datad => \ULA_1|ALT_INV_Equal0~0_combout\,
	datae => \ULA_1|ALT_INV_Equal0~1_combout\,
	dataf => \add_pc_1|ALT_INV_Add0~21_sumout\,
	combout => \multiplexador_4|R[5]~6_combout\);

\Program_Counter|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(6));

\add_pc_1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~25_sumout\ = SUM(( \Program_Counter|pout\(6) ) + ( GND ) + ( \add_pc_1|Add0~22\ ))
-- \add_pc_1|Add0~26\ = CARRY(( \Program_Counter|pout\(6) ) + ( GND ) + ( \add_pc_1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(6),
	cin => \add_pc_1|Add0~22\,
	sumout => \add_pc_1|Add0~25_sumout\,
	cout => \add_pc_1|Add0~26\);

\multiplexador_4|R[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[6]~7_combout\ = ( \ULA_1|Equal0~1_combout\ & ( \add_pc_1|Add0~25_sumout\ & ( (!\UC|Mux4~0_combout\) # ((!\memory_rom|Mux0~0_combout\ & ((!\ULA_1|Equal0~0_combout\) # (\ULA_1|Equal0~5_combout\)))) ) ) ) # ( !\ULA_1|Equal0~1_combout\ & ( 
-- \add_pc_1|Add0~25_sumout\ & ( (!\memory_rom|Mux0~0_combout\) # (!\UC|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101110111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux4~0_combout\,
	datac => \ULA_1|ALT_INV_Equal0~5_combout\,
	datad => \ULA_1|ALT_INV_Equal0~0_combout\,
	datae => \ULA_1|ALT_INV_Equal0~1_combout\,
	dataf => \add_pc_1|ALT_INV_Add0~25_sumout\,
	combout => \multiplexador_4|R[6]~7_combout\);

\Program_Counter|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \multiplexador_4|R[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(7));

\add_pc_1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_pc_1|Add0~29_sumout\ = SUM(( \Program_Counter|pout\(7) ) + ( GND ) + ( \add_pc_1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(7),
	cin => \add_pc_1|Add0~26\,
	sumout => \add_pc_1|Add0~29_sumout\);

\multiplexador_4|R[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_4|R[7]~8_combout\ = ( \ULA_1|Equal0~1_combout\ & ( \add_pc_1|Add0~29_sumout\ & ( (!\UC|Mux4~0_combout\) # ((!\memory_rom|Mux0~0_combout\ & ((!\ULA_1|Equal0~0_combout\) # (\ULA_1|Equal0~5_combout\)))) ) ) ) # ( !\ULA_1|Equal0~1_combout\ & ( 
-- \add_pc_1|Add0~29_sumout\ & ( (!\memory_rom|Mux0~0_combout\) # (!\UC|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101110111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux4~0_combout\,
	datac => \ULA_1|ALT_INV_Equal0~5_combout\,
	datad => \ULA_1|ALT_INV_Equal0~0_combout\,
	datae => \ULA_1|ALT_INV_Equal0~1_combout\,
	dataf => \add_pc_1|ALT_INV_Add0~29_sumout\,
	combout => \multiplexador_4|R[7]~8_combout\);

\memory_rom|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory_rom|Mux4~0_combout\ = (!\Program_Counter|pout\(0) & (!\Program_Counter|pout\(1) $ (!\Program_Counter|pout\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(2),
	datac => \Program_Counter|ALT_INV_pout\(0),
	combout => \memory_rom|Mux4~0_combout\);

\extensor_sinal|SAIDA[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \extensor_sinal|SAIDA[3]~0_combout\ = (!\memory_rom|Mux1~0_combout\ & (\memory_rom|Mux4~0_combout\ & \UC|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux1~0_combout\,
	datab => \memory_rom|ALT_INV_Mux4~0_combout\,
	datac => \UC|ALT_INV_Mux6~0_combout\,
	combout => \extensor_sinal|SAIDA[3]~0_combout\);

\memory_rom|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory_rom|Mux3~0_combout\ = (!\Program_Counter|pout\(2) & \Program_Counter|pout\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(0),
	combout => \memory_rom|Mux3~0_combout\);

\multiplexador_2|R[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[2]~3_combout\ = (!\memory_rom|Mux0~0_combout\ & (\UC|Mux2~0_combout\ & \banco_registradores|Reg~37_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux2~0_combout\,
	datac => \banco_registradores|ALT_INV_Reg~37_combout\,
	combout => \multiplexador_2|R[2]~3_combout\);

\multiplexador_2|R[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[4]~4_combout\ = (!\memory_rom|Mux0~0_combout\ & (\UC|Mux2~0_combout\ & \banco_registradores|Reg~38_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux2~0_combout\,
	datac => \banco_registradores|ALT_INV_Reg~38_combout\,
	combout => \multiplexador_2|R[4]~4_combout\);

\multiplexador_2|R[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[5]~5_combout\ = (!\memory_rom|Mux0~0_combout\ & (\UC|Mux2~0_combout\ & \banco_registradores|Reg~39_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux2~0_combout\,
	datac => \banco_registradores|ALT_INV_Reg~39_combout\,
	combout => \multiplexador_2|R[5]~5_combout\);

\multiplexador_2|R[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[6]~6_combout\ = (!\memory_rom|Mux0~0_combout\ & (\UC|Mux2~0_combout\ & \banco_registradores|Reg~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux2~0_combout\,
	datac => \banco_registradores|ALT_INV_Reg~40_combout\,
	combout => \multiplexador_2|R[6]~6_combout\);

\multiplexador_2|R[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador_2|R[7]~7_combout\ = (!\memory_rom|Mux0~0_combout\ & (\UC|Mux2~0_combout\ & \banco_registradores|Reg~41_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rom|ALT_INV_Mux0~0_combout\,
	datab => \UC|ALT_INV_Mux2~0_combout\,
	datac => \banco_registradores|ALT_INV_Reg~41_combout\,
	combout => \multiplexador_2|R[7]~7_combout\);

\ULA_1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Equal0~4_combout\ = (!\Program_Counter|pout\(2) & (\Program_Counter|pout\(1) & ((\ULA_1|Add0~1_sumout\) # (\ULA_1|Add0~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(2),
	datab => \Program_Counter|ALT_INV_pout\(1),
	datac => \ULA_1|ALT_INV_Add0~5_sumout\,
	datad => \ULA_1|ALT_INV_Add0~1_sumout\,
	combout => \ULA_1|Equal0~4_combout\);

\ULA_1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Equal0~2_combout\ = ( \ULA_1|Add0~25_sumout\ & ( ((!\ULA_1|Mux7~0_combout\ & \multiplexador_2|R[1]~2_combout\)) # (\ULA_1|Mux6~0_combout\) ) ) # ( !\ULA_1|Add0~25_sumout\ & ( (!\ULA_1|Mux7~0_combout\ & ((!\ULA_1|Mux6~0_combout\ & 
-- ((\multiplexador_2|R[1]~2_combout\))) # (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000011111100111100000100110001000000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Add0~21_sumout\,
	datab => \ULA_1|ALT_INV_Mux7~0_combout\,
	datac => \ULA_1|ALT_INV_Mux6~0_combout\,
	datad => \multiplexador_2|ALT_INV_R[1]~2_combout\,
	datae => \ULA_1|ALT_INV_Add0~25_sumout\,
	combout => \ULA_1|Equal0~2_combout\);

\ULA_1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Equal0~3_combout\ = ( \ULA_1|Equal0~0_combout\ & ( !\ULA_1|Equal0~2_combout\ & ( (!\ULA_1|Equal0~4_combout\ & ((!\ULA_1|Mux6~0_combout\) # ((!\ULA_1|Add0~9_sumout\ & !\ULA_1|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~9_sumout\,
	datac => \ULA_1|ALT_INV_Add0~29_sumout\,
	datad => \ULA_1|ALT_INV_Equal0~4_combout\,
	datae => \ULA_1|ALT_INV_Equal0~0_combout\,
	dataf => \ULA_1|ALT_INV_Equal0~2_combout\,
	combout => \ULA_1|Equal0~3_combout\);

\ULA_1|Mux8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux8~5_combout\ = ( \ULA_1|Mux8~3_combout\ & ( (((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) # (\ULA_1|LessThan1~2_combout\)) # (\ULA_1|Mux8~0_combout\) ) ) # ( !\ULA_1|Mux8~3_combout\ & ( ((\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~13_sumout\)) 
-- # (\ULA_1|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111111111111100011111000111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~13_sumout\,
	datac => \ULA_1|ALT_INV_Mux8~0_combout\,
	datad => \ULA_1|ALT_INV_LessThan1~2_combout\,
	datae => \ULA_1|ALT_INV_Mux8~3_combout\,
	combout => \ULA_1|Mux8~5_combout\);

\ULA_1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux7~1_combout\ = (!\ULA_1|Mux7~0_combout\ & ((!\ULA_1|Mux6~0_combout\ & ((\multiplexador_2|R[1]~2_combout\))) # (\ULA_1|Mux6~0_combout\ & (\ULA_1|Add0~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Add0~21_sumout\,
	datab => \ULA_1|ALT_INV_Mux7~0_combout\,
	datac => \ULA_1|ALT_INV_Mux6~0_combout\,
	datad => \multiplexador_2|ALT_INV_R[1]~2_combout\,
	combout => \ULA_1|Mux7~1_combout\);

\ULA_1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux6~1_combout\ = (\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~25_sumout\,
	combout => \ULA_1|Mux6~1_combout\);

\ULA_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux5~0_combout\ = (\UC|Mux6~0_combout\ & ((!\memory_rom|Mux1~0_combout\ & (!\Program_Counter|pout\(0))) # (\memory_rom|Mux1~0_combout\ & ((\ULA_1|Add0~1_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001011000010000000101100001000000010110000100000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(0),
	datab => \memory_rom|ALT_INV_Mux1~0_combout\,
	datac => \UC|ALT_INV_Mux6~0_combout\,
	datad => \ULA_1|ALT_INV_Add0~1_sumout\,
	combout => \ULA_1|Mux5~0_combout\);

\ULA_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux4~0_combout\ = (\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~5_sumout\,
	combout => \ULA_1|Mux4~0_combout\);

\ULA_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux3~0_combout\ = (\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~17_sumout\,
	combout => \ULA_1|Mux3~0_combout\);

\ULA_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux2~0_combout\ = (\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~9_sumout\,
	combout => \ULA_1|Mux2~0_combout\);

\ULA_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_1|Mux1~0_combout\ = (\ULA_1|Mux6~0_combout\ & \ULA_1|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_1|ALT_INV_Mux6~0_combout\,
	datab => \ULA_1|ALT_INV_Add0~29_sumout\,
	combout => \ULA_1|Mux1~0_combout\);

ww_out_pc(0) <= \out_pc[0]~output_o\;

ww_out_pc(1) <= \out_pc[1]~output_o\;

ww_out_pc(2) <= \out_pc[2]~output_o\;

ww_out_pc(3) <= \out_pc[3]~output_o\;

ww_out_pc(4) <= \out_pc[4]~output_o\;

ww_out_pc(5) <= \out_pc[5]~output_o\;

ww_out_pc(6) <= \out_pc[6]~output_o\;

ww_out_pc(7) <= \out_pc[7]~output_o\;

ww_out_extensor_sinal(0) <= \out_extensor_sinal[0]~output_o\;

ww_out_extensor_sinal(1) <= \out_extensor_sinal[1]~output_o\;

ww_out_extensor_sinal(2) <= \out_extensor_sinal[2]~output_o\;

ww_out_extensor_sinal(3) <= \out_extensor_sinal[3]~output_o\;

ww_out_extensor_sinal(4) <= \out_extensor_sinal[4]~output_o\;

ww_out_extensor_sinal(5) <= \out_extensor_sinal[5]~output_o\;

ww_out_extensor_sinal(6) <= \out_extensor_sinal[6]~output_o\;

ww_out_extensor_sinal(7) <= \out_extensor_sinal[7]~output_o\;

ww_herbert(0) <= \herbert[0]~output_o\;

ww_herbert(1) <= \herbert[1]~output_o\;

ww_herbert(2) <= \herbert[2]~output_o\;

ww_herbert(3) <= \herbert[3]~output_o\;

ww_herbert(4) <= \herbert[4]~output_o\;

ww_herbert(5) <= \herbert[5]~output_o\;

ww_herbert(6) <= \herbert[6]~output_o\;

ww_herbert(7) <= \herbert[7]~output_o\;

ww_in_rom(0) <= \in_rom[0]~output_o\;

ww_in_rom(1) <= \in_rom[1]~output_o\;

ww_in_rom(2) <= \in_rom[2]~output_o\;

ww_in_rom(3) <= \in_rom[3]~output_o\;

ww_in_rom(4) <= \in_rom[4]~output_o\;

ww_in_rom(5) <= \in_rom[5]~output_o\;

ww_in_rom(6) <= \in_rom[6]~output_o\;

ww_in_rom(7) <= \in_rom[7]~output_o\;

ww_out_opcode(0) <= \out_opcode[0]~output_o\;

ww_out_opcode(1) <= \out_opcode[1]~output_o\;

ww_out_opcode(2) <= \out_opcode[2]~output_o\;

ww_miller(0) <= \miller[0]~output_o\;

ww_miller(1) <= \miller[1]~output_o\;

ww_miller(2) <= \miller[2]~output_o\;

ww_miller(3) <= \miller[3]~output_o\;

ww_miller(4) <= \miller[4]~output_o\;

ww_miller(5) <= \miller[5]~output_o\;

ww_miller(6) <= \miller[6]~output_o\;

ww_miller(7) <= \miller[7]~output_o\;

ww_tarlison(0) <= \tarlison[0]~output_o\;

ww_tarlison(1) <= \tarlison[1]~output_o\;

ww_tarlison(2) <= \tarlison[2]~output_o\;

ww_tarlison(3) <= \tarlison[3]~output_o\;

ww_tarlison(4) <= \tarlison[4]~output_o\;

ww_tarlison(5) <= \tarlison[5]~output_o\;

ww_tarlison(6) <= \tarlison[6]~output_o\;

ww_tarlison(7) <= \tarlison[7]~output_o\;

ww_out_multiplex_1(0) <= \out_multiplex_1[0]~output_o\;

ww_out_multiplex_1(1) <= \out_multiplex_1[1]~output_o\;

ww_out_multiplex_1(2) <= \out_multiplex_1[2]~output_o\;

ww_out_multiplex_1(3) <= \out_multiplex_1[3]~output_o\;

ww_out_multiplex_1(4) <= \out_multiplex_1[4]~output_o\;

ww_out_multiplex_1(5) <= \out_multiplex_1[5]~output_o\;

ww_out_multiplex_1(6) <= \out_multiplex_1[6]~output_o\;

ww_out_multiplex_1(7) <= \out_multiplex_1[7]~output_o\;

ww_out_multiplex_2(0) <= \out_multiplex_2[0]~output_o\;

ww_out_multiplex_2(1) <= \out_multiplex_2[1]~output_o\;

ww_out_multiplex_2(2) <= \out_multiplex_2[2]~output_o\;

ww_out_multiplex_2(3) <= \out_multiplex_2[3]~output_o\;

ww_out_multiplex_2(4) <= \out_multiplex_2[4]~output_o\;

ww_out_multiplex_2(5) <= \out_multiplex_2[5]~output_o\;

ww_out_multiplex_2(6) <= \out_multiplex_2[6]~output_o\;

ww_out_multiplex_2(7) <= \out_multiplex_2[7]~output_o\;

ww_out_multiplex_3(0) <= \out_multiplex_3[0]~output_o\;

ww_out_multiplex_3(1) <= \out_multiplex_3[1]~output_o\;

ww_out_multiplex_3(2) <= \out_multiplex_3[2]~output_o\;

ww_out_multiplex_3(3) <= \out_multiplex_3[3]~output_o\;

ww_out_multiplex_3(4) <= \out_multiplex_3[4]~output_o\;

ww_out_multiplex_3(5) <= \out_multiplex_3[5]~output_o\;

ww_out_multiplex_3(6) <= \out_multiplex_3[6]~output_o\;

ww_out_multiplex_3(7) <= \out_multiplex_3[7]~output_o\;

ww_out_multiplex_4(0) <= \out_multiplex_4[0]~output_o\;

ww_out_multiplex_4(1) <= \out_multiplex_4[1]~output_o\;

ww_out_multiplex_4(2) <= \out_multiplex_4[2]~output_o\;

ww_out_multiplex_4(3) <= \out_multiplex_4[3]~output_o\;

ww_out_multiplex_4(4) <= \out_multiplex_4[4]~output_o\;

ww_out_multiplex_4(5) <= \out_multiplex_4[5]~output_o\;

ww_out_multiplex_4(6) <= \out_multiplex_4[6]~output_o\;

ww_out_multiplex_4(7) <= \out_multiplex_4[7]~output_o\;

ww_out_branch <= \out_branch~output_o\;

ww_out_mem_read <= \out_mem_read~output_o\;

ww_out_mem_write <= \out_mem_write~output_o\;

ww_out_ula_src <= \out_ula_src~output_o\;

ww_out_reg_write <= \out_reg_write~output_o\;

ww_out_mem_to_reg <= \out_mem_to_reg~output_o\;

ww_out_ula_op(0) <= \out_ula_op[0]~output_o\;

ww_out_ula_op(1) <= \out_ula_op[1]~output_o\;

ww_out_ula_op(2) <= \out_ula_op[2]~output_o\;

ww_out_ram(0) <= \out_ram[0]~output_o\;

ww_out_ram(1) <= \out_ram[1]~output_o\;

ww_out_ram(2) <= \out_ram[2]~output_o\;

ww_out_ram(3) <= \out_ram[3]~output_o\;

ww_out_ram(4) <= \out_ram[4]~output_o\;

ww_out_ram(5) <= \out_ram[5]~output_o\;

ww_out_ram(6) <= \out_ram[6]~output_o\;

ww_out_ram(7) <= \out_ram[7]~output_o\;

ww_out_zero <= \out_zero~output_o\;

ww_out_ula_resultado(0) <= \out_ula_resultado[0]~output_o\;

ww_out_ula_resultado(1) <= \out_ula_resultado[1]~output_o\;

ww_out_ula_resultado(2) <= \out_ula_resultado[2]~output_o\;

ww_out_ula_resultado(3) <= \out_ula_resultado[3]~output_o\;

ww_out_ula_resultado(4) <= \out_ula_resultado[4]~output_o\;

ww_out_ula_resultado(5) <= \out_ula_resultado[5]~output_o\;

ww_out_ula_resultado(6) <= \out_ula_resultado[6]~output_o\;

ww_out_ula_resultado(7) <= \out_ula_resultado[7]~output_o\;
END structure;


