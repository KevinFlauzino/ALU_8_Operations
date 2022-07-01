--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:57:02 06/30/2022
-- Design Name:   
-- Module Name:   C:/Users/Usuario/OneDrive/FACUL/UFRJ/Repositorios_git/ALU_8_Operations_VHDL/Trabalho1_Kevin_Andre_Igor/TESTE_comparador.vhd
-- Project Name:  Trabalho1_Kevin_Andre_Igor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparador_4bits
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
 
ENTITY TESTE_comparador IS
END TESTE_comparador;
 
ARCHITECTURE behavior OF TESTE_comparador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparador_4bits
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Z_maior : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z_maior : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparador_4bits PORT MAP (
          A => A,
          B => B,
          Z_maior => Z_maior
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		
		A <= "0000";
		B <= "0000";

      wait;
   end process;

END;
