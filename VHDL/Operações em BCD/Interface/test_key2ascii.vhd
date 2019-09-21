--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:17:48 06/29/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects/SD Projeto 2/Interface/test_key2ascii.vhd
-- Project Name:  Interface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: key2ascii
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
 
ENTITY test_key2ascii IS
END test_key2ascii;
 
ARCHITECTURE behavior OF test_key2ascii IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT key2ascii
    PORT(
         key_code : IN  std_logic_vector(7 downto 0);
         ascii_code : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal key_code : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ascii_code : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: key2ascii PORT MAP (
          key_code => key_code,
          ascii_code => ascii_code
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		key_code <= "00010110";

      wait;
   end process;

END;
