----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:48 06/03/2022 
-- Design Name: 
-- Module Name:    multiplicador_4bits - Behavioral 
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

entity multiplicador_4bits is
		PORT (X, Y: in STD_LOGIC_VECTOR(3 downto 0);
		 P: out STD_LOGIC_VECTOR(7 downto 0)
		 );
end multiplicador_4bits;

architecture Behavioral of multiplicador_4bits is
		COMPONENT half_adder IS
			PORT (A, B: in STD_LOGIC;
					S, Cout: out STD_LOGIC);
		END COMPONENT;
		
		COMPONENT full_adder IS
			PORT(A, B, Cin: in STD_LOGIC;
				  S, Cout: out	STD_LOGIC);
		END COMPONENT;
		
		signal c2, c31, c32, c41, c42, c43, c51, c52, c53, c61, c62, c7: STD_LOGIC;
		signal sp2, sp31, sp32, sp41, sp42, sp51, sp52: STD_LOGIC;		--Soma parcial 
begin
	P(0) <= X(0) AND Y(0);
	
	h1: half_adder PORT MAP ((X(1) AND Y(0)), (X(0) AND Y(1)), P(1), c2);
	
	f21: full_adder PORT MAP ((Y(0) AND X(2)), (Y(1) AND X(1)), c2, sp2, c31);
	h2: half_adder PORT MAP (sp2,(Y(2) AND X(0)), p(2), c32);
	
	f31: full_adder PORT MAP (c31, c32, (Y(0) AND X(3)), sp31, c41);
	f32: full_adder PORT MAP ((Y(1) AND X(2)), (Y(2) AND X(1)), sp31, sp32, c42);
	h3:  half_adder PORT MAP ((Y(3) AND X(0)), sp32, P(3), c43);
	
	f41: full_adder PORT MAP (c41, c42, c43, sp41, c51);
	f42: full_adder PORT MAP ((Y(1) AND X(3)), (Y(2) AND X(2)), sp41, sp42, c52);
	h4:  half_adder PORT MAP ((Y(3) AND X(1)), sp42, P(4), c53);
	
	f51: full_adder PORT MAP (c51, c52, c53, sp51, c61);
	f52: full_adder PORT MAP ((Y(2) AND X(3)),(Y(3) AND X(2)), sp51 , P(5), c62);
	
	f61: full_adder PORT MAP (c61, c62, (Y(3) AND X(3)), P(6), c7);
	
	P(7) <= c7;
end Behavioral;

