--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:51:57 07/05/2019
-- Design Name:   
-- Module Name:   /home/iverton/Documentos/SD Projeto 2 atual/Interface_main/test_main.vhd
-- Project Name:  Interface_main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Interface_main
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
 
ENTITY test_main IS
END test_main;
 
ARCHITECTURE behavior OF test_main IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Interface_main
    PORT(
         clkPlaca : IN  std_logic;
         ps2d : IN  std_logic;
         ps2c : IN  std_logic;
         operacao : IN  std_logic;
         LCD_DB : OUT  std_logic_vector(7 downto 0);
         RS : OUT  std_logic;
         RW : OUT  std_logic;
         OE : OUT  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clkPlaca : std_logic := '0';
   signal ps2d : std_logic := '0';
   signal ps2c : std_logic := '0';
   signal operacao : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal LCD_DB : std_logic_vector(7 downto 0);
   signal RS : std_logic;
   signal RW : std_logic;
   signal OE : std_logic;

   -- Clock period definitions
   constant clkPlaca_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Interface_main PORT MAP (
          clkPlaca => clkPlaca,
          ps2d => ps2d,
          ps2c => ps2c,
          operacao => operacao,
          LCD_DB => LCD_DB,
          RS => RS,
          RW => RW,
          OE => OE,
          rst => rst
        );

   -- Clock process definitions
   clkPlaca_process :process
   begin
		clkPlaca <= '0';
		wait for clkPlaca_period/2;
		clkPlaca <= '1';
		wait for clkPlaca_period/2;
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