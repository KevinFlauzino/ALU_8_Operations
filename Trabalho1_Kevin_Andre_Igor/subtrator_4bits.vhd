----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:18 06/03/2022 
-- Design Name: 
-- Module Name:    subtrator_4bits - Behavioral 
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

entity subtrator_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
				D: out STD_LOGIC_VECTOR (3 downto 0);
				Cin: in STD_LOGIC);
end subtrator_4bits;

architecture Behavioral of subtrator_4bits is
		COMPONENT somador_4bits IS
			PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			S: out STD_LOGIC_VECTOR (3 downto 0);
			Cin: in STD_LOGIC;
			Cout: out STD_LOGIC);
		END COMPONENT;

begin

	d1: somador_4bits PORT MAP (X, NOT Y, D, '1');

end Behavioral;

