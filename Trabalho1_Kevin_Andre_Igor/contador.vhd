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
	PORT (TEMPO_SEGUNDOS, CLK_50MHZ : IN INTEGER;
			END_T :OUT STD_LOGIC);
end contador;

architecture Behavioral of contador is
	
begin

	PROCESS
		VARIABLE I, J : INTEGER;
		
		BEGIN
			FOR I IN 0 TO 5000000 LOOP
				IF (TEMPO_SEGUNDOS >= ((1/CLK_50MHZ)*I)) THEN
					j := I;
				END IF;
			END LOOP;
	END PROCESS;	
		

end Behavioral;

