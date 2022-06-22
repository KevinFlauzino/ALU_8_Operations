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
	PORT (N1, N2, ESC: in STD_LOGIC_VECTOR(3 downto 0);
			Reset, Confirma: in STD_LOGIC;
			Resultado: out STD_LOGIC_VECTOR(7 downto 0)
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

begin

	PROCESS ULA(Reset, Confirma)
	
		--Declarando variáveis
		VARIABLE Confirma_var : STD_LOGIC;
		
		--Início da ULA
		BEGIN
		if Confirma = "1" then
			N1 <= --switches			
			

	END PROCESS;
end Behavioral;

