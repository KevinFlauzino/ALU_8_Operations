--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:13:15 07/01/2022
-- Design Name:   
-- Module Name:   C:/Users/Usuario/OneDrive/FACUL/UFRJ/Repositorios_git/ALU_8_Operations_VHDL/Trabalho1_Kevin_Andre_Igor/TESTE_contador.vhd
-- Project Name:  Trabalho1_Kevin_Andre_Igor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador
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
 
ENTITY TESTE_contador IS
END TESTE_contador;
 
ARCHITECTURE behavior OF TESTE_contador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador
    PORT(
         CLK_50MHZ : IN  std_logic;
         TEMPO_SEGUNDOS : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_50MHZ : std_logic := '0';

	--BiDirs
   signal TEMPO_SEGUNDOS : std_logic;

   -- Clock period definitions
   constant CLK_50MHZ_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador PORT MAP (
          CLK_50MHZ => CLK_50MHZ,
          TEMPO_SEGUNDOS => TEMPO_SEGUNDOS
        );

   -- Clock process definitions
   CLK_50MHZ_process :process
   begin
		CLK_50MHZ <= '0';
		wait for CLK_50MHZ_period/2;
		CLK_50MHZ <= '1';
		wait for CLK_50MHZ_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_50MHZ_period*5;

      -- insert stimulus here 
	
      wait;
   end process;

END;
