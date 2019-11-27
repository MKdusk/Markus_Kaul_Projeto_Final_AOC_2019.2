LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- IN_nome = Entrada da Trilha no Componente
-- OUT_nome = Saida da Trilha no Componente

ENTITY MKdusk8BitsProcess IS
	PORT(
		clock : IN std_logic;
		--TRILHAS PC
		out_pc : OUT std_logic_vector(7 DOWNTO 0);
		--Extenso de Sinal
		out_extensor_sinal : OUT std_logic_vector(7 DOWNTO 0);
		
		--ROM
		herbert : OUT std_logic_vector(7 DOWNTO 0);
		in_rom : OUT std_logic_vector(7 DOWNTO 0);
		
		out_opcode : OUT std_logic_vector(2 DOWNTO 0);
		
		miller : OUT std_logic_vector(7 DOWNTO 0);
		tarlison : OUT std_logic_vector(7 DOWNTO 0);
		
		--Multiplexador
		out_multiplex_1 : OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex_2 : OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex_3 : OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex_4 : OUT std_logic_vector(7 DOWNTO 0);
		
		--UC
		out_branch : OUT std_logic;
		out_mem_read : OUT std_logic;
		out_mem_write : OUT std_logic;
		out_ula_src : OUT std_logic;
		out_reg_write : OUT std_logic;
		out_mem_to_reg : OUT std_logic;
		out_ula_op : OUT  std_logic_vector(2 DOWNTO 0);
		
		--RAM
		out_ram : OUT std_logic_vector(7 DOWNTO 0);
		
		--ULA
		out_zero : OUT std_logic;
		out_ula_resultado : OUT std_logic_vector(7 DOWNTO 0));
		
		
END MKdusk8BitsProcess;

ARCHITECTURE behavior OF MKdusk8BitsProcess IS
-----------COMPONENTES------------------	
	COMPONENT PC IS
		PORT(
			clk  :  IN  STD_LOGIC;
			pin  :  IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			pout :  OUT STD_LOGIC_VECTOR (7 DOWNTO 0)	
		);	
	END COMPONENT;
	
	COMPONENT SomadorPC IS
		PORT(
			AddIn : in STD_LOGIC_VECTOR(7 DOWNTO 0);
			AddInTwo : in STD_LOGIC_VECTOR(7 DOWNTO 0);
			AddOut : out STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ROM_1 IS
		PORT(endereco : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		     saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ExtensordeSinal3To8bits IS
		PORT(
			ENTRADA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			ENTRADA2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);	
			SAIDA   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			extend3 : IN STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT Multiplexador IS
		PORT(
			A, B : IN std_logic_vector(7 DOWNTO 0);
			S1: IN std_logic;
			R : OUT std_logic_vector(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT BancoRegistradores is 
		port(
			Clk : in std_logic;
			EscReg: in std_logic;
			RegA: out std_logic_vector (7 downto 0);
			RegB: out std_logic_vector (7 downto 0); 
			Data: in std_logic_vector  (7 downto 0);
			LeReg1: in std_logic_vector (0 downto 0);
			LeReg2: in std_logic_vector (0 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ULA IS 
		PORT(a, b 				: IN std_logic_vector(7 DOWNTO 0);
			  ula_controle 	: IN std_logic_vector(2 DOWNTO 0);
			  ula_resultado 	: OUT std_logic_vector(7 DOWNTO 0);
			  zero 				: OUT std_logic);
	END COMPONENT;
	
	COMPONENT RAM IS
		port(dado_entrada : IN std_logic_vector(7 DOWNTO 0);
			  dado_saida   : OUT std_logic_vector(7 DOWNTO 0);
			  endereco     : IN std_logic_vector(7 DOWNTO 0);
			  EscMem, LeMem, clk   : IN STD_LOGIC);
	END COMPONENT;
	
	COMPONENT PortAnd IS
		Port(
			A, B : IN std_logic;
			R : OUT std_logic);
	END COMPONENT;
	
	COMPONENT Unidade_Controle IS
		PORT(opcode : IN std_logic_vector(2 DOWNTO 0);
			  funct : IN std_logic_vector (2 downto 0);
			  ula_op : OUT std_logic_vector(2 DOWNTO 0);
			  mem_to_reg, branch, mem_read, mem_write, ula_src, reg_write, extend3, jump, reg_for_write : OUT std_logic);
	END COMPONENT;
	
--=================================================--
--=================================================--
-------------SINAIS---------------------
	-----PC-----
	SIGNAL pc_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL in_pc  : std_logic_vector(7 DOWNTO 0);
	SIGNAL add_pc_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL add_pc_2_out : std_logic_vector(7 DOWNTO 0);
	
	-----ROM-----------------------------
	SIGNAL rom_out : std_logic_vector(7 DOWNTO 0);
	
	-----Extensor de Sinal----------------------------
	SIGNAL extensor_de_sinal_out : std_logic_vector(7 DOWNTO 0);
	
	-----Multiplexadores-----------------
	SIGNAL multiplex_1_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex_2_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex_3_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex_5_out : std_logic_vector(7 DOWNTO 0);
	
	-----Banco de Registradores-----------------------
	SIGNAL banco_A_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL banco_B_out : std_logic_vector(7 DOWNTO 0);
	
	-----ULA------------------------------------------
	SIGNAL ula_out : std_logic_vector(7 DOWNTO 0);
	SIGNAL ula_zero_out : std_logic;
	
	-----RAM------------------------------------------
	SIGNAL ram_out : std_logic_vector(7 DOWNTO 0);
	
	-----AND-----------------------------------------
	SIGNAL and_out : std_logic;
	
	-----Uidade de Controle---------------------------
	SIGNAL branch_out : std_logic;
	SIGNAL mem_read_out : std_logic;
	SIGNAL mem_write_out : std_logic;
	SIGNAL ula_src_out : std_logic;
	SIGNAL reg_write_out : std_logic;
	SIGNAL mem_to_reg_out : std_logic;
	SIGNAL ula_op_out : std_logic_vector(2 DOWNTO 0);
	SIGNAL extend3_out : std_logic;
	SIGNAL jump_out : std_logic;
	SIGNAL reg_for_write_out : std_logic;
	
BEGIN
--=================================================--
--=================================================--
------------PORT MAPs-------------------
	-- PC -------------------------------
	Program_Counter : PC PORT MAP(
								clk  => clock,
								pin  => in_pc,
								pout => pc_out
							);
							
	add_pc_1 : SomadorPC	PORT MAP(
								AddIn => pc_out,
								AddInTwo => "00000001",
								AddOut => add_pc_out
				);
				
				
	--ROM--------------------------------
	memory_rom : ROM_1 PORT MAP(
						    endereco => pc_out,
							 saida => rom_out
					 );
					 
	--Extensor de Sinal------------------
	extensor_sinal : ExtensordeSinal3To8bits PORT MAP(
							 ENTRADA => rom_out(2 DOWNTO 0),
							 ENTRADA2 => rom_out(3 DOWNTO 0),
							 SAIDA => extensor_de_sinal_out,
							 extend3 => extend3_out
						  );
	
				  
	--Banco de Registradores--------------
	banco_registradores : BancoRegistradores PORT MAP(
									clk => clock,
									EscReg => reg_write_out,
									LeReg1 => rom_out(4 DOWNTO 4),
									LeReg2 => rom_out(3 DOWNTO 3),
									Data => multiplex_3_out,
									RegA => banco_A_out,
									RegB => banco_B_out
								 );			  
				  
	--Multiplexador----------------------
	multiplexador_1 : Multiplexador PORT MAP(
								A => extensor_de_sinal_out,
								B => add_pc_out,
								S1 => and_out,
								R => multiplex_1_out
							);
							
	multiplexador_2 : Multiplexador PORT MAP(
								A => banco_B_out,
								B => extensor_de_sinal_out,
								S1 => ula_src_out, 
								R => multiplex_2_out 
							);
							
	multiplexador_3 : Multiplexador PORT MAP(
								A => ram_out,
								B => ula_out,
								S1 => mem_to_reg_out,
								R => multiplex_3_out
							);
	multiplexador_4 : Multiplexador PORT MAP(
								A => "000" & rom_out(4 DOWNTO 0),
								B => multiplex_1_out,
								S1 => jump_out,
								R => in_pc
							);
							
	multiplexador_5 : Multiplexador PORT MAP(
								A => banco_A_out,
								B => banco_B_out,
								S1 => reg_for_write_out,
								R => multiplex_5_out
							);
							
	--ULA----------------------------------------------
	ULA_1 : ULA PORT MAP(
				a => banco_A_out,
				b => multiplex_2_out,
				ula_controle => ula_op_out,
				ula_resultado => ula_out,
				zero => ula_zero_out
			);
	
	--RAM------------------------------------------------
	ram_1 : RAM PORT MAP(
				  dado_entrada => multiplex_5_out,
				  endereco => ula_out,
				  LeMem => mem_read_out, 
				  EscMem => mem_write_out, 
				  clk => clock,
				  dado_saida => ram_out	
			  );
			  
	--AND-----------------------------------------------
	port_and : portAnd PORT MAP(
						A => branch_out,
						B => ula_zero_out,
						R => and_out
				  );
	--UC------------------------------------------------
	UC : Unidade_Controle PORT MAP(
				opcode => rom_out(7 DOWNTO 5),
				funct => rom_out(2 DOWNTO 0),
				mem_to_reg => mem_to_reg_out, 
				branch => branch_out, 
				mem_read => mem_read_out, 
				mem_write => mem_write_out, 
				ula_src => ula_src_out, 
				reg_write => reg_write_out,
				ula_op => ula_op_out,
				extend3 => extend3_out,
				jump => jump_out,
				reg_for_write => reg_for_write_out
		  );
	
	
------------TRILHAS---------------------
   --PC----------------------------------
		out_pc <= in_pc;
		miller <= banco_A_out;
		tarlison <= banco_B_out;
	
	--Extenso de Sinal
		out_extensor_sinal <= extensor_de_sinal_out;
		
		--ROM
		herbert <= rom_out;
		--in_rom <= pc_out;
		
		out_opcode <= rom_out(7 DOWNTO 5);
		
		--Multiplexador
		out_multiplex_1 <= in_pc;
		out_multiplex_2 <= multiplex_2_out;
		out_multiplex_3 <= multiplex_3_out;
		out_multiplex_4 <= multiplex_5_out;
		
		--UC
		out_branch <= branch_out;
		--out_mem_read <= mem_read_out;
		--out_mem_write <= mem_write_out;
		--out_ula_src <= ula_src_out;
		--out_reg_write <= reg_write_out;
		--out_mem_to_reg <= mem_to_reg_out;
		--out_ula_op <= ula_op_out;
		
		--RAM
		out_ram <= ram_out;
		
		--ULA
		out_ula_resultado <= ula_out;
		out_zero <= ula_zero_out;
END behavior;