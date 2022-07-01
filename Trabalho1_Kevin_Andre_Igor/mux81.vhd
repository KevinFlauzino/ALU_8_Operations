----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:43 06/03/2022 
-- Design Name: 
-- Module Name:    mux81 - Behavioral 
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

entity mux81 is
		PORT (x0, x1, x2, x3, x4, x5, x6, x7: in STD_LOGIC;
			  s: in STD_LOGIC_VECTOR(2 downto 0); 
			  z: out STD_LOGIC
		);
				
end mux81;

architecture dataflow of mux81 is

begin
	
		z <= 	(((x0 and (not s(2))) and (not s(1)) and (not s(0))) OR
          	((x1 and (not s(2))) and (not s(1)) and (s(0))) OR 
				((x2 and (not s(2))) and (s(1)) and (not s(0))) OR  
				((x3 and (not s(2))) and (s(1)) and (s(0))) OR  
				((x4 and (s(2))) and (not s(1)) and (not s(0))) OR  
				((x5 and (s(2))) and (not s(1)) and (s(0))) OR  
				((x6 and (s(2))) and (s(1)) and (not s(0))) OR 
				((x7 and (s(2))) and (s(1)) and (s(0))));

end dataflow;