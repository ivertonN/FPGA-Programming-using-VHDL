--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:12:15 04/04/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/MyOr4/TestOr4.vhd
-- Project Name:  MyOr4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyOr4
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
 
ENTITY TestOr4 IS
END TestOr4;
 
ARCHITECTURE behavior OF TestOr4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MyOr4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MyOr4 PORT MAP (
          A => A,
          B => B,
          Z => Z
        );
	A <= "0000" after 100 ns,"1110" after 200 ns,"0011" after 300 ns,"0100" after 400 ns;
	B <= "0110" after 100 ns,"1100" after 200 ns,"1010" after 300 ns,"0111" after 400 ns;


END;
