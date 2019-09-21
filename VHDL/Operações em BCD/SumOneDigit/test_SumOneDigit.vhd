--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:01:36 05/25/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects-20190509T025947Z-001/SD projects/SumOneDigit/test_SumOneDigit.vhd
-- Project Name:  SumOneDigit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SumOneDigit
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
 
ENTITY test_SumOneDigit IS
END test_SumOneDigit;
 
ARCHITECTURE behavior OF test_SumOneDigit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumOneDigit
    PORT(
         X_in : IN  std_logic_vector(3 downto 0);
         Y_in : IN  std_logic_vector(3 downto 0);
         C_in : IN  std_logic;
         C_out : OUT  std_logic;
         Z_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_in : std_logic_vector(3 downto 0) := (others => '0');
   signal Y_in : std_logic_vector(3 downto 0) := (others => '0');
   signal C_in : std_logic := '0';

 	--Outputs
   signal C_out : std_logic;
   signal Z_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumOneDigit PORT MAP (
          X_in => X_in,
          Y_in => Y_in,
          C_in => C_in,
          C_out => C_out,
          Z_out => Z_out
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		X_in <= "0001";
		Y_in <= "0001";
		C_in <= '0';
		wait for 10 ns;

		X_in <= "0001";
		Y_in <= "0000";
		C_in <= '1';

		wait for 10 ns;
		X_in <= "1001";
		Y_in <= "0001";
		C_in <= '0';
		wait for 10 ns;

		X_in <= "0101";
		Y_in <= "0101";
		C_in <= '0';
		wait for 10 ns;

		X_in <= "0101";
		Y_in <= "0101";
		C_in <= '1';
		wait for 10 ns;

		X_in <= "1001";
		Y_in <= "0101";
		C_in <= '1';
		wait for 10 ns;
		
      wait;
   end process;

END;
