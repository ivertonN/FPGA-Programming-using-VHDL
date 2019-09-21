--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:53:38 04/06/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/MyPlus1/TestPlus1.vhd
-- Project Name:  MyPlus1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyPlus1
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
 
ENTITY TestPlus1 IS
END TestPlus1;
 
ARCHITECTURE behavior OF TestPlus1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MyPlus1
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MyPlus1 PORT MAP (
          A => A,
          Z => Z,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
      -- insert stimulus here 
		A <= "0001";
      wait for 100 ns;
		
		A <= "0010";
      wait for 100 ns;

		A <= "0011";
      wait for 100 ns;

		A <= "0100";
      wait for 100 ns;

		A <= "0101";
      wait for 100 ns;

		A <= "0110";
      wait for 100 ns;

		A <= "0111";
      wait for 100 ns;

		A <= "1000";
      wait for 100 ns;

		A <= "1001";
      wait for 100 ns;

		A <= "1111";
      wait for 100 ns;

		A <= "1011";
      wait for 100 ns;

		A <= "1100";
      wait for 100 ns;		
   end process;


END;
