-- Porta Lógica OR

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PortOr IS
	Port(
		A, B: IN std_logic;
		R : OUT std_logic);
END PortOr;

ARCHITECTURE POr of PortOr IS

BEGIN
		R <= A or B;
END POr;
