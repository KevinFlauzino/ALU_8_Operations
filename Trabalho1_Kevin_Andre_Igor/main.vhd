----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:26 06/03/2022 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
	PORT (switchs: in STD_LOGIC_VECTOR(3 downto 0);					
			reset, confirma: in STD_LOGIC;
			resultado: out STD_LOGIC_VECTOR(7 downto 0)
			);	
end Main;

architecture Behavioral of Main is

	COMPONENT ULA is
		PORT (switchs: in STD_LOGIC_VECTOR(3 downto 0);					
			reset, confirma: in STD_LOGIC;
			resultado: out STD_LOGIC_VECTOR(7 downto 0)
			);
	END COMPONENT;
begin

	ULA_FINAL : ULA port map (switchs, reset, confirma, resultado);
	
end Behavioral;

