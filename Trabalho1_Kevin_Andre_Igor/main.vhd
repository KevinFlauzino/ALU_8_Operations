----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:26 06/03/2022 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
	PORT (n1, n2, esc: in STD_LOGIC_VECTOR(3 downto 0);
			reset, confirma: in STD_LOGIC;
			resultado: out STD_LOGIC_VECTOR(7 downto 0)
			);
end Main;

architecture Behavioral of Main is

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
	
	SIGNAL cout: STD_LOGIC;
	
begin

	PROCESS(reset, confirma)	
		--Declarando variáveis		
		
		--Início da ULA
		BEGIN
			if confirma = "1" then
				n1 <= "0";  --switches
			end if;
				
			wait until confirma'event;
				if confirma = "1" then
				n2 <= "0";--switches
				end if;
			
			wait until confirma'event;
				if confirma = "1" then
				esc <= "0";--switches
				-------------------------------------------Op.Lógicas
					If esc = "0000" then 			--AND
						resultado <= n1 AND n2;
						
					else If esc = "0001" then 		--OR
						resultado <= n1 OR n2;
						
					else If esc = "0010" then 		--NOT
						resultado <= NOT n1;
						
						wait for 2s; 					--Aguarda 2 segundos para que apareça o próximo numero negado
						
						Resultado <= NOT n2;
						
					else If esc = "0011" then	 	--XOR
						resultado <= n1 XOR n2;
						
				
				-------------------------------------------Op.Artméticas
					--else if esc = "0100" then 		--SOMA
						--soma: somador_4bits PORT MAP (n1, n2, resultado,);	
						
					end if;					
				end if;					
	END PROCESS;
	
end Behavioral;

