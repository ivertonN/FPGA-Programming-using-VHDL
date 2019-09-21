----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:48 04/25/2019 
-- Design Name: 
-- Module Name:    contador6sec - Behavioral 
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
----------------------------------------------------------------------------------library IEEE;
library ieee;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador6sec is
port(  clk_50Mhz : in std_logic;
		 ENABLE: in std_logic;
		 CLEAR: in std_logic;
		 counter : out integer range 300000000 downto 0;
		 clk_6sec : out std_logic := '0' --apenas para de teste do programa, clock com periodo de 6 segundos;
        );
end contador6sec;

architecture Behavioral of contador6sec is

begin

process(clk_50Mhz, CLEAR)
	variable counterTemp: integer range 300000000 downto 0;

	begin
		if(CLEAR = '1') then
			counterTemp := 0;
			clk_6sec <= '0';
		elsif( rising_edge(clk_50Mhz) ) then
			if(ENABLE = '0') then
				clk_6sec <= '0';
				counterTemp := 0;
			else
				if(counterTemp = 0) then
					clk_6sec <= '1';
				elsif(counterTemp = 150000000) then
					clk_6sec <= '0';
				end if;
				
				if(counterTemp >= 300000000) then
					counterTemp := 0;
				else
					counterTemp := counterTemp + 1;
				end if;
			end if;
		end if;
		counter <= counterTemp;
end process;   

end Behavioral;