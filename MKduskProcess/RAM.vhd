LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RAM IS
	port(dado_entrada : IN std_logic_vector(7 DOWNTO 0);
		  dado_saida   : OUT std_logic_vector(7 DOWNTO 0);
		  endereco     : IN std_logic_vector(7 DOWNTO 0);
		  EscMem, LeMem, clk   : IN STD_LOGIC);
END RAM;

ARCHITECTURE teste OF RAM IS
	TYPE arranjo_memoria IS ARRAY(0 TO 1) OF std_logic_vector(7 DOWNTO 0);
	SIGNAL memoria : arranjo_memoria:= (others => "00000000");
BEGIN
	process(Clk)
		begin
			if(rising_edge(Clk)) then
				if(EscMem = '1') then
					memoria(to_integer(unsigned(endereco))) <= dado_entrada;
				end if;
				if (LeMem = '1') then
					dado_saida <= memoria(to_integer(unsigned(endereco)));
				end if;
			end if;
	end process;
END teste;
