----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:46 07/01/2022 
-- Design Name: 
-- Module Name:    Incremento1_4bits - Behavioral 
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

entity Incremento1_4bits is
	PORT( X: in STD_LOGIC_VECTOR(3 downto 0);
			Z: out STD_LOGIC_VECTOR(3 downto 0);
			coutX: out STD_LOGIC
			);
end Incremento1_4bits;	

architecture Behavioral of Incremento1_4bits is

	COMPONENT somador_4bits is
	PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			S: out STD_LOGIC_VECTOR (3 downto 0);
			Cin: in STD_LOGIC;
			Cout: out STD_LOGIC);
	END COMPONENT;

begin
	s1: somador_4bits PORT MAP (X, "0000", Z, '1', coutX);

end Behavioral;

