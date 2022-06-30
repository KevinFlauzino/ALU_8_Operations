----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:44 06/29/2022 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
GENERIC(CLK_FREQUENCIA : INTEGER);

	PORT (CLK_50MHZ 		: IN STD_LOGIC;
			TEMPO_SEGUNDOS : INOUT INTEGER			
			);
end contador;

architecture Behavioral of contador is
	SIGNAL I : INTEGER;
	
begin

	PROCESS(CLK_50MHZ) is		
	BEGIN
		if rising_edge(CLK_50MHZ) then
			if I = CLK_FREQUENCIA - 1 then
				I <= 0;					
			else
				I <= I + 1;
			end if;	
		end if;
			
	END PROCESS;			

end Behavioral;

