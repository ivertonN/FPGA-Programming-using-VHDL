--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:44:18 04/04/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/MySum4/TestSum4.vhd
-- Project Name:  MySum4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MySum4
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
 
ENTITY TestSum4 IS
END TestSum4;
 
ARCHITECTURE behavior OF TestSum4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MySum4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MySum4 PORT MAP (
          A => A,
          B => B,
          S => S,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
      -- insert stimulus here 
		A <= "0001";
		B <= "0000";
      wait for 100 ns;
		
		A <= "0001";
		B <= "0001";
      wait for 100 ns;

		A <= "0001";
		B <= "0010";
      wait for 100 ns;

		A <= "0011";
		B <= "0001";
      wait for 100 ns;

		A <= "1111";
		B <= "0001";
      wait for 100 ns;

		A <= "1111";
		B <= "1111";
      wait for 100 ns;

		A <= "0111";
		B <= "1001";
      wait for 100 ns;

		A <= "1010";
		B <= "0110";
      wait for 100 ns;

		A <= "0001";
		B <= "1011";
      wait for 100 ns;

		A <= "0101";
		B <= "1110";
      wait for 100 ns;

		A <= "1001";
		B <= "0110";
      wait for 100 ns;

		A <= "0001";
		B <= "0001";
      wait for 100 ns;		
   end process;

END;
