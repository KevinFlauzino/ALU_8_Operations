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
	PORT (switchs: in STD_LOGIC_VECTOR(3 downto 0);					
			reset, confirma, CLK_50MHZ: in STD_LOGIC;
			resultado: out STD_LOGIC_VECTOR(7 downto 0)
			);	
end Main;

architecture Behavioral of Main is

	COMPONENT ULA is
		PORT (x, y: 	  in STD_LOGIC_VECTOR(3 downto 0);
		  seletor:    in STD_LOGIC_VECTOR(2 downto 0);
		  resultado: out STD_LOGIC_VECTOR(7 downto 0));
	END COMPONENT;
	
	SIGNAL n1, n2: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL esc: STD_LOGIC_VECTOR(2 downto 0);
	
begin

	PROCESS(reset, confirma, CLK_50MHZ) is
		--Variáveis
		VARIABLE auxiliar: INTEGER := 0;
	BEGIN
		--Adicionando primeiro número
		if confirma = '1' then
			n1 <= switchs;
			auxiliar := auxiliar + 1;
		end if;
		
		--Adicionando segundo número
		if auxiliar >= 0 then		
			if confirma = '1' then
				n2 <= switchs;
				auxiliar := auxiliar + 1;
			end if;
		end if;
		
		--Escolhendo operação
		if auxiliar >= 1 then			
			if confirma = '1' then
				esc(0) <= switchs(0);
				esc(1) <= switchs(1);
				esc(2) <= switchs(2);
				auxiliar := auxiliar + 1;
			end if;
		end if;
		
		--Implementando Reset
		if reset = '1' then
			n1  			<= "0000";
			n2  			<= "0000";
			esc 			<= "000";
			resultado  	<= "00000000";
		end if;		

	END PROCESS;
	
	ULA_FINAL: ULA PORT MAP(n1, n2, esc, resultado);
	
end Behavioral;