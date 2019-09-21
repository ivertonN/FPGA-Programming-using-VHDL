--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:08:31 06/07/2019
-- Design Name:   
-- Module Name:   /home/sd/Documents/SD projeto BCD/SD projeto BCD/SD Projeto 2/SumNDigit/test_SumNDigit.vhd
-- Project Name:  SumNDigit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SumNDigit
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
 
ENTITY test_SumNDigit IS
END test_SumNDigit;
 
ARCHITECTURE behavior OF test_SumNDigit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumNDigit
    PORT(
         X_in : IN  std_logic_vector(15 downto 0);
         Y_in : IN  std_logic_vector(15 downto 0);
         Z_out : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_in : std_logic_vector(15 downto 0) := (others => '0');
   signal Y_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Z_out : std_logic_vector(19 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumNDigit PORT MAP (
          X_in => X_in,
          Y_in => Y_in,
          Z_out => Z_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		X_in <= "0000000000000101"; -- 5
		Y_in <= "0000000000000110"; -- 6
		wait for 10ns;
		
		X_in <= "0000000000010111"; --17
		Y_in <= "0000000000110101"; --35
		wait for 10ns;
      
		X_in <= "0000010001100011"; -- 463
		Y_in <= "0000001101110111"; -- 377
		wait for 10ns;
		
		X_in <= "1001100110010000"; --9990
		Y_in <= "1000000000000000"; --8000
		wait for 10ns;		
		-- insert stimulus here 

      wait;
   end process;

END;
