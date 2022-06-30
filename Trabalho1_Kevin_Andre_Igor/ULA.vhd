----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:26 06/03/2022 
-- Design Name: 
-- Module Name:    ULA - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ULA is
	PORT (switchs: in STD_LOGIC_VECTOR(3 downto 0);					
			reset, confirma: in STD_LOGIC;
			resultado: out STD_LOGIC_VECTOR(7 downto 0)
			);
end ULA;

architecture Behavioral of ULA is

	--MULTIPLICADOR
	COMPONENT multiplicador_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR(3 downto 0);
		 P: out STD_LOGIC_VECTOR(7 downto 0)
		 );
	END COMPONENT;
	
	--SOMADOR
	COMPONENT somador_4bits is
	PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			S: out STD_LOGIC_VECTOR (3 downto 0);
			Cin: in STD_LOGIC;
			Cout: out STD_LOGIC);
	END COMPONENT;

	--SUBTRATOR
	COMPONENT subtrator_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
				D: out STD_LOGIC_VECTOR (3 downto 0);
				Cin: in STD_LOGIC);
	END COMPONENT;
	
	--CONTADOR
	COMPONENT contador is
		PORT (TEMPO_SEGUNDOS, CLK_50MHZ : IN INTEGER;
			END_T :OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL n1, n2, esc: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
begin

	PROCESS(switchs, reset, confirma)
		--Declarando variveis	
					
		--Incio da ULA
			BEGIN		
				resultado <= "00000000";
				
				if confirma = '1' then
					n1 <= switchs;  --switches
				end if;
					
				
				if confirma = '1' then
					n2 <= switchs;--switches
				end if;
		
				
				if confirma = '1' then
					esc <= switchs; --switches
				-------------------------------------------Op.Lgicas
					If esc = "0000" then 			--AND
						resultado (3 DOWNTO 0) <= n1 AND n2;
						
					elsif esc = "0001" then 		--OR
						resultado (3 DOWNTO 0)  <= n1 OR n2;
						
					elsIf esc = "0010" then 		--NOT
						resultado (3 DOWNTO 0)  <= NOT n1;
						
						 --Clock da placa = 50Mhz
								
						resultado (3 DOWNTO 0)  <= NOT n2;
						
					elsIf esc = "0011" then	 	--XOR
						resultado (3 DOWNTO 0)  <= n1 XOR n2;
							
					
					-------------------------------------------Op.Artmticas
					
							
					end if;					
				end if;	
				
				if(reset = '1') then
					n1  <= "0000";
					n2  <= "0000";
					esc <= "0000";
				end if;
	END PROCESS;	
end Behavioral;

