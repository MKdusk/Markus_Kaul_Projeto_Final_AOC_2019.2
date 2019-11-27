-- Porta Lógica NOT

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PortNot IS
	Port(
		A : IN std_logic;
		R : OUT std_logic);
END PortNot;

ARCHITECTURE PNot of PortNot IS

BEGIN
		R <= not A;
END PNot;