--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:24:21 05/25/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects-20190509T025947Z-001/SD Projeto 2/MultOneDigit/test_MultOneDigit.vhd
-- Project Name:  MultOneDigit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MultOneDigit
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
 
ENTITY test_MultOneDigit IS
END test_MultOneDigit;
 
ARCHITECTURE behavior OF test_MultOneDigit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MultOneDigit
    PORT(
         X_in : IN  std_logic_vector(3 downto 0);
         Y_in : IN  std_logic_vector(3 downto 0);
         C_in : IN  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic_vector(3 downto 0);
         Z_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_in : std_logic_vector(3 downto 0) := (others => '0');
   signal Y_in : std_logic_vector(3 downto 0) := (others => '0');
   signal C_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal C_out : std_logic_vector(3 downto 0);
   signal Z_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultOneDigit PORT MAP (
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
		X_in <= "0010";
		Y_in <= "0110";
		C_in <= "0000";
		wait for 10 ns;

		X_in <= "0010";
		Y_in <= "0110";
		C_in <= "1001";
		wait for 10 ns;

		X_in <= "1001";
		Y_in <= "1001";
		C_in <= "0000";
		wait for 10 ns;

		X_in <= "1001";
		Y_in <= "1001";
		C_in <= "0101";
		wait for 10 ns;

		X_in <= "0110";
		Y_in <= "0110";
		C_in <= "0010";
		wait for 10 ns;

		X_in <= "0110";
		Y_in <= "0110";
		C_in <= "1000";
		wait for 10 ns;

		X_in <= "1000";
		Y_in <= "0100";
		C_in <= "0001";
		wait for 10 ns;

		X_in <= "1000";
		Y_in <= "0100";
		C_in <= "1000";
		wait for 10 ns;

		X_in <= "1001";
		Y_in <= "0111";
		C_in <= "0110";
		wait for 10 ns;

      wait;
   end process;

END;
