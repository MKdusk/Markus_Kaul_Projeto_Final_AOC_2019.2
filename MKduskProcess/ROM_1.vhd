LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ROM_1 IS
	PORT(endereco : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		  saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ROM_1;

ARCHITECTURE teste OF ROM_1 IS
	TYPE arranjo_memoria IS ARRAY (NATURAL RANGE <>) OF 	std_logic_vector(7 DOWNTO 0);
	CONSTANT dados: arranjo_memoria(0 To 8) :=
	(0 => "11000000", -- Coloca 0
	 1 => "11010001", -- Coloca 1 
	 2 => "00001000", -- ADD
	 3 => "00010000", -- ADD
	 4 => "01101010", -- bne

	 
	 
	 --3 => "00000011", -- ADD
	 --3 => "01111010", --bne
	 --4 => "11010001", 
	 others => "10000000");
BEGIN
	saida <= dados(conv_integer(unsigned(endereco)));
END teste;
