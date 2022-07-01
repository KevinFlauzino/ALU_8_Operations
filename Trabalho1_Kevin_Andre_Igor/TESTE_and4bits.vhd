--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:07:40 07/01/2022
-- Design Name:   
-- Module Name:   C:/Users/Usuario/OneDrive/FACUL/UFRJ/Repositorios_git/ALU_8_Operations_VHDL/Trabalho1_Kevin_Andre_Igor/TESTE_and4bits.vhd
-- Project Name:  Trabalho1_Kevin_Andre_Igor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and_4bits
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
 
ENTITY TESTE_and4bits IS
END TESTE_and4bits;
 
ARCHITECTURE behavior OF TESTE_and4bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_4bits
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_4bits PORT MAP (
          X => X,
          Y => Y,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		
		X <= "1111";
		Y <= "0010";

      wait;
   end process;

END;
