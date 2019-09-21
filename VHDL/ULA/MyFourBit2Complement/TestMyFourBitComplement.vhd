--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:32:52 04/05/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/MyFourBit2Complement/TestMyFourBitComplement.vhd
-- Project Name:  MyFourBit2Complement
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyFourBit2Complement
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
 
ENTITY TestMyFourBitComplement IS
END TestMyFourBitComplement;
 
ARCHITECTURE behavior OF TestMyFourBitComplement IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MyFourBit2Complement
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MyFourBit2Complement PORT MAP (
          A => A,
          Z => Z
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

		A <= "0000";
      wait for 100 ns;

		A <= "0100";
      wait for 100 ns;

		A <= "1111";
      wait for 100 ns;

		A <= "1010";
      wait for 100 ns;

		A <= "1110";
      wait for 100 ns;

		A <= "1011";
      wait for 100 ns;

		A <= "0111";
      wait for 100 ns;

		A <= "1001";
      wait for 100 ns;

		A <= "1101";
      wait for 100 ns;		
   end process;
END;
