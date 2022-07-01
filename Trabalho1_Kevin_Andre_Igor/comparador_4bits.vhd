----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:47 06/30/2022 
-- Design Name: 
-- Module Name:    comparador_4bits - Behavioral 
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

entity comparador_4bits is
	PORT (A, B : in STD_LOGIC_VECTOR(3 downto 0);
			Z_maior : out STD_LOGIC
			);
end comparador_4bits;

architecture Behavioral of comparador_4bits is
	SIGNAL Z_menor, Z_igual: STD_LOGIC;
	

begin
	Z_menor <= (((A(0) AND (NOT B(0))) AND (A(1) XNOR B(1)) AND (A(2) XNOR B(2)) AND (A(3) XNOR B(3))) OR
		  ((A(1) AND (NOT B(1))) AND (A(2) XNOR B(2)) AND (A(3) XNOR B(3))) OR
		  ((A(2) AND (NOT B(2))) AND (A(3) XNOR B(3))) OR
		  ((A(3) AND (NOT B(3)))));
		  
	Z_igual <= ((A(0) XNOR B(0)) AND (A(1) XNOR B(1)) AND (A(2) XNOR B(2)) AND (A(3) XNOR B(3)));
	
	Z_maior <= Z_menor NOR Z_igual;
		  
end Behavioral;

