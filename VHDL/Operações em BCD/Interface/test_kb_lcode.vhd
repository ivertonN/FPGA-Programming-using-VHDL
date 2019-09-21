--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:30:19 06/29/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects/SD Projeto 2/Interface/test_kb_lcode.vhd
-- Project Name:  Interface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: kb_code
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
 
ENTITY test_kb_lcode IS
END test_kb_lcode;
 
ARCHITECTURE behavior OF test_kb_lcode IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kb_code
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ps2d : IN  std_logic;
         ps2c : IN  std_logic;
         rd_key_code : IN  std_logic;
         key_code : OUT  std_logic_vector(7 downto 0);
         kb_buf_empty : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ps2d : std_logic := '0';
   signal ps2c : std_logic := '0';
   signal rd_key_code : std_logic := '0';

 	--Outputs
   signal key_code : std_logic_vector(7 downto 0);
   signal kb_buf_empty : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kb_code PORT MAP (
          clk => clk,
          reset => reset,
          ps2d => ps2d,
          ps2c => ps2c,
          rd_key_code => rd_key_code,
          key_code => key_code,
          kb_buf_empty => kb_buf_empty
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		reset <= '1';
		ps2d <= '1';
		wait for 10 ns;
		reset <= '0';
		wait for 5 ns;
		ps2c <= '0';
		rd_key_code <= '0';
		-- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		
		--F0 (break) 1
		ps2d <= '0'; --start
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a1
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a2
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a4
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a5
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
 		ps2d <= '1'; --a6
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a7
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a8
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --parity
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --stop
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0'; --final

		wait for 5 us;
		ps2c <= '1';
		wait for 5 ns;
		ps2c <= '0';

		--1 1
		ps2d <= '0'; --start
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a1
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a2
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a4
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a5
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
 		ps2d <= '0'; --a6
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a7
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a8
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --parity
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --stop
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0'; --final
		wait for 300 ns;
		rd_key_code <= '1';

		wait for 5 us;
		ps2c <= '1';
		wait for 10 ns;
		rd_key_code <= '0';
		wait for 5 ns;
		ps2c <= '0';

		--F0 (break)
		ps2d <= '0'; --start
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a1
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a2
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a4
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a5
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
 		ps2d <= '1'; --a6
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a7
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a8
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --parity
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --stop
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0'; --final

		wait for 5 us;
		ps2c <= '1';
		wait for 5 ns;
		ps2c <= '0';

		--1
		ps2d <= '0'; --start
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a1
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a2
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a4
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a5
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
 		ps2d <= '0'; --a6
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a7
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --a8
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '0'; --parity
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --stop
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0'; --final

		wait for 5 us;
		ps2c <= '1';
		wait for 5 ns;
		ps2c <= '0';

      wait;
   end process;

END;
