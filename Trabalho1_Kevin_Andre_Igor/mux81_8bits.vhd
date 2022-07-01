----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:20 06/03/2022 
-- Design Name: 
-- Module Name:    mux81_8bits - Behavioral 
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

entity mux81_8bits is
	PORT (x0, x1, x2, x3, x4, x5, x6, x7: in STD_LOGIC_VECTOR(7 downto 0);
		  s: in STD_LOGIC_VECTOR(2 downto 0); 
		  z: out STD_LOGIC_VECTOR(7 downto 0)
		);

end mux81_8bits;

architecture structural of mux81_8bits is

	COMPONENT mux81 IS
		PORT (x0, x1, x2, x3, x4, x5, x6, x7: in STD_LOGIC;
			  s: in STD_LOGIC_VECTOR(2 downto 0); 
			  z: out STD_LOGIC
		);
	END COMPONENT;

	signal c1, c2, c3: STD_LOGIC;
	
begin
	
	MUX0: mux81 PORT MAP (x0(0), x1(0), x2(0), x3(0), x4(0), x5(0), x6(0), x7(0),
						  s, z(0));
	MUX1: mux81 PORT MAP (x0(1), x1(1), x2(1), x3(1), x4(1), x5(1), x6(1), x7(1),
						  s, z(1));
	MUX2: mux81 PORT MAP (x0(2), x1(2), x2(2), x3(2), x4(2), x5(2), x6(2), x7(2),
						  s, z(2));
	MUX3: mux81 PORT MAP (x0(3), x1(3), x2(3), x3(3), x4(3), x5(3), x6(3), x7(3),
						  s, z(3));
	MUX4: mux81 PORT MAP (x0(4), x1(4), x2(4), x3(4), x4(4), x5(4), x6(4), x7(4),
						  s, z(4));
	MUX5: mux81 PORT MAP (x0(5), x1(5), x2(5), x3(5), x4(5), x5(5), x6(5), x7(5),
						  s, z(5));
	MUX6: mux81 PORT MAP (x0(6), x1(6), x2(6), x3(6), x4(6), x5(6), x6(6), x7(6),
						  s, z(6));
	MUX7: mux81 PORT MAP (x0(7), x1(7), x2(7), x3(7), x4(7), x5(7), x6(7), x7(7),
						  s, z(7));
					  
end structural;

