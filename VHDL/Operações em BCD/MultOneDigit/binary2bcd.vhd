----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:58 07/04/2019 
-- Design Name: 
-- Module Name:    binary2bcd - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity binary2bcd is
   Port ( 
      number   : in  std_logic_vector (7 downto 0);
      tens     : out std_logic_vector (3 downto 0);
      ones     : out std_logic_vector (3 downto 0)
   );
end binary2bcd;
 
architecture Behavioral of binary2bcd is
 
begin
 
   bin_to_bcd : process (number)
      -- Internal variable for storing bits
      variable shift : unsigned(15 downto 0);
      
	  -- Alias for parts of shift register
      alias num is shift(7 downto 0);
      alias one is shift(11 downto 8);
      alias ten is shift(15 downto 12);
   begin
      -- Clear previous number and store new number in shift register
      num := unsigned(number);
      one := X"0";
      ten := X"0";
      
	  -- Loop eight times
      for i in 1 to num'Length loop
	     -- Check if any digit is greater than or equal to 5
         if one >= 5 then
            one := one + 3;
         end if;
         
         if ten >= 5 then
            ten := ten + 3;
         end if;
         
		 -- Shift entire register left once
         shift := shift_left(shift, 1);
      end loop;
      
	  -- Push decimal numbers to output
      tens     <= std_logic_vector(ten);
      ones     <= std_logic_vector(one);
   end process;
 
end Behavioral;