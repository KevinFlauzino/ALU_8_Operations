--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:59 06/22/2022
-- Design Name:   
-- Module Name:   D:/Trabalho1_Kevin_Andre_Igor/TESTE_multiplicador.vhd
-- Project Name:  Trabalho1_Kevin_Andre_Igor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplicador_4bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TESTE_multiplicador IS
END TESTE_multiplicador;
 
ARCHITECTURE behavior OF TESTE_multiplicador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplicador_4bits
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         P : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
 BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplicador_4bits PORT MAP (
          X => X,
          Y => Y,
          P => P
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		X <= "0100";
		Y <= "0111";

      wait;
   end process;

END;
