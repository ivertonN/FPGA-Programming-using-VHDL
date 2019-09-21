--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:32:35 06/30/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects/SD Projeto 2/Interface/test_interface.vhd
-- Project Name:  Interface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Interface
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
 
ENTITY test_interface IS
END test_interface;
 
ARCHITECTURE behavior OF test_interface IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Interface
    PORT(
         clk : IN  std_logic;
         ps2d : IN  std_logic;
         ps2c : IN  std_logic;
         operacao : IN  std_logic;
         display_data : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ps2d : std_logic := '0';
   signal ps2c : std_logic := '0';
   signal operacao : std_logic := '0';

 	--Outputs
   signal display_data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Interface PORT MAP (
          clk => clk,
          ps2d => ps2d,
          ps2c => ps2c,
          operacao => operacao,
          display_data => display_data
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
      -- hold reset state for 100 ns.
      wait for 95 ns;	
		operacao <= '1';
		wait for 5 ns;
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


		wait for 5 us;
		ps2c <= '1';
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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

---adicionais
				wait for 5 us;
		ps2c <= '1';
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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

----enter
		wait for 20 us;

				wait for 5 us;
		ps2c <= '1';
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		ps2d <= '0'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a4
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
		ps2d <= '1'; --a7
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

-----segundo numero
		wait for 5 us;
		ps2c <= '1';
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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

----enter
		wait for 20 us;

				wait for 5 us;
		ps2c <= '1';
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		ps2d <= '0'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a4
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
		ps2d <= '1'; --a7
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

----enter
		wait for 20 us;

				wait for 5 us;
		ps2c <= '1';
		--F0 (break) 2
		ps2d <= '0'; --start
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
		--2
		ps2d <= '0'; --start
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
		ps2d <= '0'; --a3
		ps2c <= '1';
		wait for 5 us;
		ps2c <= '0';
		wait for 5 us;
		ps2d <= '1'; --a4
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
		ps2d <= '1'; --a7
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
      wait;
   end process;

END;