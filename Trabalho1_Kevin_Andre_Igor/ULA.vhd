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
	PORT (x, y: 	  in STD_LOGIC_VECTOR(3 downto 0);
		  seletor:    in STD_LOGIC_VECTOR(2 downto 0);
		  resultado: out STD_LOGIC_VECTOR(7 downto 0)
	);
end ULA;

architecture structural of ULA is

	--MULTIPLICADOR
	COMPONENT multiplicador_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR(3 downto 0);
		 	  resultado: out STD_LOGIC_VECTOR(7 downto 0)
		 );
	END COMPONENT;
	
	--SOMADOR
	COMPONENT somador_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			resultado: out STD_LOGIC_VECTOR (3 downto 0);
			Cin: in STD_LOGIC;
			Cout: out STD_LOGIC);
	END COMPONENT;

	--SUBTRATOR
	COMPONENT subtrator_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			resultado: out STD_LOGIC_VECTOR (3 downto 0)
			cout: out STD_LOGIC(3 downto 0)
		);
	END COMPONENT;
	
	--AND
	COMPONENT and_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
				S: out STD_LOGIC_VECTOR (3 downto 0));
	END COMPONENT;
	
	--OR
	COMPONENT or_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			S: out STD_LOGIC_VECTOR (3 downto 0));
	END COMPONENT;
	
	--MUX 8X1 8 BITS
	COMPONENT mux81_8bits is
		PORT (x0, x1, x2, x3, x4, x5, x6, x7: in STD_LOGIC_VECTOR(7 downto 0);
			  seletor: in STD_LOGIC_VECTOR(2 downto 0); 
			  z: out STD_LOGIC_VECTOR(7 downto 0)
		);
		
  END COMPONENT;

	signal parcial_soma: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal cout_soma:    STD_LOGIC;
	signal resultado_multiplicacao: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal resultado_and: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal resultado_or: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
begin

	
	SOMADOR:   	   somador_4bits(X, Y, parcial_soma, cout_soma);
	SUBTRATOR:     subtrator_4bits(X, Y, resultado_subtracao);
	MULTIPLICADOR: multiplicador_4bits(X, Y, resultado_multiplicacao);
	OPERACAO_AND:  and_4bits(X, Y, resultado_and); 
	OPERACAO_OR:   or_4bits(X, Y, resultado_or);


	MUX: mux81 PORT MAP ("000" & cout_soma & parcial_soma, --Somador 
						 , 								   --Subtrator
						 resultado_multiplicacao, 
						 "0000" & resultado_and, 
						 "0000" & resultado_or, 
						 x4(0), 
						 x5(0), 
						 x6(0), 
						 x7(0),
						 s, 
						 resultado);



end structural;