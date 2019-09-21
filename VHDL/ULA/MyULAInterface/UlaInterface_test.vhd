--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:29:14 05/04/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/MyULAInterface/UlaInterface_test.vhd
-- Project Name:  MyULAInterface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyULAInterface
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
 
ENTITY UlaInterface_test IS
END UlaInterface_test;
 
ARCHITECTURE behavior OF UlaInterface_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MyULAInterface
    PORT(
         clk_50Mhz : IN  std_logic;
         rst : IN  std_logic;
         botaoEntrada : IN  std_logic;
         entradaUla : IN  std_logic_vector(3 downto 0);
         ledSelecao : OUT  std_logic_vector(3 downto 0);
         led_Show : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_50Mhz : std_logic := '0';
   signal rst : std_logic := '0';
   signal botaoEntrada : std_logic := '0';
   signal entradaUla : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ledSelecao : std_logic_vector(3 downto 0);
   signal led_Show : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_50Mhz_period : time := 0.00000002 sec;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MyULAInterface PORT MAP (
          clk_50Mhz => clk_50Mhz,
          rst => rst,
          botaoEntrada => botaoEntrada,
          entradaUla => entradaUla,
          ledSelecao => ledSelecao,
          led_Show => led_Show
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
      wait for 100 ns;

      -- insert stimulus here 
		rst <= '0';
		botaoEntrada <= '0';
		entradaUla <= "0000";
		
		wait for 10 ns;
		entradaUla <= "0011";
		wait for 10 ns;
		entradaUla <= "0101";
		
		wait for 10 ns;
		botaoEntrada <= '1';
		wait for 1 ns;
		botaoEntrada <= '0';
		
		wait for 10 ns;
		entradaUla <= "0011";
		wait for 10 ns;
		botaoEntrada <= '1';
		wait for 1 ns;
		botaoEntrada <= '0';
		
		wait for 10 ns;
		entradaUla <= "1100";
		wait for 10 ns;
		botaoEntrada <= '1';
		wait for 1 ns;
		botaoEntrada <= '0';

		wait for 5 sec;
		entradaUla <= "1000";
		wait for 10 ns;
		botaoEntrada <= '1';
		wait for 1 ns;
		botaoEntrada <= '0';		
		wait for 5 sec;
		rst <= '1';
		wait for 1 ns;
		rst <= '0';
		
		
      wait;
   end process;

END;
