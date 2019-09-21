--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:16:09 04/12/2019
-- Design Name:   
-- Module Name:   /home/centurio/SD projects/MyULA/testMyULA.vhd
-- Project Name:  MyULA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyULA
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
 
ENTITY testMyULA IS
END testMyULA;
 
ARCHITECTURE behavior OF testMyULA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MyULA
    PORT(
         entradaX : IN  std_logic_vector(3 downto 0);
         entradaY : IN  std_logic_vector(3 downto 0);
         SeletorOperacao : IN  std_logic_vector(2 downto 0);
         saidaZ : OUT  std_logic_vector(3 downto 0);
         CarryBorrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal entradaX : std_logic_vector(3 downto 0) := (others => '0');
   signal entradaY : std_logic_vector(3 downto 0) := (others => '0');
   signal SeletorOperacao : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal saidaZ : std_logic_vector(3 downto 0);
   signal CarryBorrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MyULA PORT MAP (
          entradaX => entradaX,
          entradaY => entradaY,
          SeletorOperacao => SeletorOperacao,
          saidaZ => saidaZ,
          CarryBorrow => CarryBorrow
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
      -- insert stimulus here
		
		--SeletorOperacao <= "000"; --and4
		--SeletorOperacao <= "001"; --or4
		--SeletorOperacao <= "010"; -- not4
		--SeletorOperacao <= "011"; --xor4
		--SeletorOperacao <= "100"; --sum4
		--SeletorOperacao <= "101"; --plus1
		--SeletorOperacao <= "110"; --sub4
		SeletorOperacao <= "111"; --mult4

		entradaX <= "0000";
		entradaY <= "0000";
      wait for 100 ns;
		
		entradaX <= "0001";
		entradaY <= "0001";
      wait for 100 ns;

		entradaX <= "0001";
		entradaY <= "0010";
      wait for 100 ns;

		entradaX <= "0011";
		entradaY <= "0001";
      wait for 100 ns;

		entradaX <= "1111";
		entradaY <= "0001";
      wait for 100 ns;

		entradaX <= "1111";
		entradaY <= "1111";
      wait for 100 ns;

		entradaX <= "0111";
		entradaY <= "1001";
      wait for 100 ns;

		entradaX <= "1010";
		entradaY <= "0110";
      wait for 100 ns;

		entradaX <= "0001";
		entradaY <= "1011";
      wait for 100 ns;

		entradaX <= "0101";
		entradaY <= "1110";
      wait for 100 ns;

		entradaX <= "1001";
		entradaY <= "0110";
      wait for 100 ns;

		entradaX <= "0001";
		entradaY <= "0001";
      wait for 100 ns;		
   end process;

END;
