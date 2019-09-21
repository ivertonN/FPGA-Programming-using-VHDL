----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:04:46 06/30/2019 
-- Design Name: 
-- Module Name:    convercor - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convercor is
    Port ( display_data : in  STD_LOGIC_VECTOR (3 downto 0);
           display_converted : out  STD_LOGIC_VECTOR (7 downto 0));
end convercor;

architecture Behavioral of convercor is

begin
	convercaoDigito: process(display_data)
	begin
		case display_data is
		when "0000" => display_converted <= "0011"&display_data; --0
		when "0001" => display_converted <= "0011"&display_data; --1
		when "0010" => display_converted <= "0011"&display_data; --2
		when "0011" => display_converted <= "0011"&display_data; --3
		when "0100" => display_converted <= "0011"&display_data; --4
		when "0101" => display_converted <= "0011"&display_data; --5
		when "0110" => display_converted <= "0011"&display_data; --6
		when "0111" => display_converted <= "0011"&display_data; --7
		when "1000" => display_converted <= "0011"&display_data; --8
		when "1001" => display_converted <= "0011"&display_data; --9
		when "1111" => display_converted <= "11111110"; --space
		when others => display_converted <= "11111110"; --sera tratado como space
		end case;
	end process;
end Behavioral;

