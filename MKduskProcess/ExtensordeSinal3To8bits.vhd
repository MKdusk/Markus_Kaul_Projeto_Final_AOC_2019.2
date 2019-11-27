LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;  
USE ieee.std_logic_unsigned.all;

ENTITY ExtensordeSinal3To8bits IS
	PORT(
		ENTRADA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		ENTRADA2: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SAIDA   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		extend3 : IN STD_LOGIC
	);
	
END ExtensordeSinal3To8bits;

ARCHITECTURE BEHAVIOR OF ExtensordeSinal3To8bits IS

BEGIN
 process(ENTRADA, ENTRADA2)
  begin
	if(extend3 = '1') then
			SAIDA <= ("00000") & ENTRADA;		
	end if;
	if(extend3 = '0') then
			SAIDA <= ("0000") & ENTRADA2;		
	end if;
 end process;
END BEHAVIOR;