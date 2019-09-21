--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:56:16 04/23/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/contador6sec/contador6sec_test.vhd
-- Project Name:  contador6sec
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador6sec
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
 
ENTITY contador6sec_test IS
END contador6sec_test;
 
ARCHITECTURE behavior OF contador6sec_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador6sec
    PORT(
         clk_50Mhz : IN  std_logic;
         CLEAR : IN  std_logic;
			counter : out integer range 300000000 downto 0;
         clk_6sec : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_50Mhz : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
	signal counter : integer range 300000000 downto 0;
   signal clk_6sec : std_logic;

   -- Clock period definitions
   constant clk_50Mhz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador6sec PORT MAP (
          clk_50Mhz => clk_50Mhz,
          CLEAR => CLEAR,
          counter => counter,
          clk_6sec => clk_6sec
        );

   -- Clock process definitions
   clk_50Mhz_process :process
   begin
		clk_50Mhz <= '0';
		wait for clk_50Mhz_period/2;
		clk_50Mhz <= '1';
		wait for clk_50Mhz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 1 ns;	
		CLEAR <= '1';
		wait for 1 ns;
      -- insert stimulus here 
		CLEAR <= '0';
      wait;
   end process;

END;