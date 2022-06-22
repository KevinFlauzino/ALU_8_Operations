----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:20 06/03/2022 
-- Design Name: 
-- Module Name:    somador_4bits - Behavioral 
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

entity somador_4bits is
	PORT (X, Y: in STD_LOGIC_VECTOR (3 downto 0);
			S: out STD_LOGIC_VECTOR (3 downto 0);
			Cin: in STD_LOGIC;
			Cout: out STD_LOGIC);

end somador_4bits;

architecture structural of somador_4bits is

	COMPONENT full_adder IS
		PORT(A, B, Cin: in STD_LOGIC;
			  S, Cout: out	STD_LOGIC);
	END COMPONENT;
	signal c1, c2, c3: STD_LOGIC;
	
begin
	FA1: full_adder PORT MAP (X(0), Y(0), Cin, S(0), c1);
	FA2: full_adder PORT MAP (X(1), Y(1), c1, S(1), c2);
	FA3: full_adder PORT MAP (X(2), Y(2), c2, S(2), c3);
	FA4: full_adder PORT MAP (X(3), Y(3), c3, S(3), Cout);

end structural;

