--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:15:35 05/03/2022
-- Design Name:   
-- Module Name:   /home/ise/xilinx-repo/abcd/gate_tb.vhd
-- Project Name:  abcd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gate
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
 
ENTITY gate_tb IS
END gate_tb;
 
ARCHITECTURE behavior OF gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gate
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gate PORT MAP (
          a => a,
          b => b,
          c => c
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      a <= '0'; b <= '0';
      wait for 100 ns;	
		
		a <= '0'; b <= '1';
      wait for 100 ns;	
		
		a <= '1'; b <= '0';
      wait for 100 ns;	

		a <= '1'; b <= '1';
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
