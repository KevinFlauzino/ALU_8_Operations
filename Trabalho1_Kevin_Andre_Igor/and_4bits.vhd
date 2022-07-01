----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:48:50 06/30/2022 
-- Design Name: 
-- Module Name:    and_4bits - Behavioral 
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

entity and_4bits is

	PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			S: out STD_LOGIC_VECTOR (3 downto 0));

end and_4bits;

architecture Behavioral of and_4bits is

	COMPONENT and_1bit IS
		PORT(A, B: in STD_LOGIC;
			  S: out	STD_LOGIC);
	END COMPONENT;
	
begin
	AND_1: and_1bit PORT MAP (X(0), Y(0), S(0));
	AND_2: and_1bit PORT MAP (X(1), Y(1), S(1));
	AND_3: and_1bit PORT MAP (X(2), Y(2), S(2));
	AND_4: and_1bit PORT MAP (X(3), Y(3), S(3));


end Behavioral;

