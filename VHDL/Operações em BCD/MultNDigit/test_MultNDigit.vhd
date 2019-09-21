--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:23:32 06/25/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects/SD Projeto 2/MultNDigit/test_MultNDigit.vhd
-- Project Name:  MultNDigit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MultNDigit
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
 
ENTITY test_MultNDigit IS
END test_MultNDigit;
 
ARCHITECTURE behavior OF test_MultNDigit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MultNDigit
    PORT(
         X_in : IN  std_logic_vector(15 downto 0);
         Y_in : IN  std_logic_vector(15 downto 0);
         Z_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_in : std_logic_vector(15 downto 0) := (others => '0');
   signal Y_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Z_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultNDigit PORT MAP (
          X_in => X_in,
          Y_in => Y_in,
          Z_out => Z_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		X_in <= "0000"&"0000"&"0000"&"0010";
		Y_in <= "0000"&"0000"&"0010"&"0100";
		wait for 10 ns;
		
		X_in <= "0000"&"0000"&"0010"&"0010";
		Y_in <= "1001"&"1001"&"1001"&"1001";
		wait for 10 ns;
		
		X_in <= "0001"&"1000"&"0110"&"0001";
		Y_in <= "0101"&"0111"&"1000"&"0010";
		wait for 10 ns;
		
		X_in <= "1000"&"1001"&"0100"&"0010";
		Y_in <= "1001"&"0101"&"0001"&"0011";
		wait for 10 ns;
		
		X_in <= "0000"&"0010"&"0111"&"0011";
		Y_in <= "0000"&"0011"&"0100"&"0100";
		wait for 10 ns;


      wait;
   end process;

END;
