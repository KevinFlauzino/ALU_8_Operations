----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:37:15 07/01/2022 
-- Design Name: 
-- Module Name:    not_4bits - Behavioral 
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

entity not_4bits is

PORT (X: in STD_LOGIC_VECTOR (3 downto 0);
		S: out STD_LOGIC_VECTOR (3 downto 0));

end not_4bits;

architecture Behavioral of not_4bits is

	COMPONENT not_1bit IS
		PORT(A: in STD_LOGIC;
			  S: out	STD_LOGIC);
	END COMPONENT;
	
begin
	NOT_1: not_1bit PORT MAP (X(0), S(0));
	NOT_2: not_1bit PORT MAP (X(1), S(1));
	NOT_3: not_1bit PORT MAP (X(2), S(2));
	NOT_4: not_1bit PORT MAP (X(3), S(3));


end Behavioral;

