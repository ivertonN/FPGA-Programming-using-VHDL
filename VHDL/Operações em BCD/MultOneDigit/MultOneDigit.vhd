----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:30:17 05/25/2019 
-- Design Name: 
-- Module Name:    MultOneDigit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MultOneDigit is
    Port ( X_in : in  STD_LOGIC_VECTOR (3 downto 0) := "0000"; 
           Y_in : in  STD_LOGIC_VECTOR (3 downto 0) := "0000";
           C_in : in  STD_LOGIC_VECTOR (3 downto 0) := "0000";
           C_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Z_out : out  STD_LOGIC_VECTOR (3 downto 0));
end MultOneDigit;

architecture Behavioral of MultOneDigit is

	Component binary2bcd is
		Port ( 
			number   : in  std_logic_vector (7 downto 0);
			tens     : out std_logic_vector (3 downto 0);
			ones     : out std_logic_vector (3 downto 0)
		);
	end Component;

	signal mult_XY: std_logic_vector(7 downto 0) := "00000000";
	signal C_temp: std_logic_vector(3 downto 0) := "0000";
	signal Z_temp: std_logic_vector(4 downto 0) := "00000";
	signal rest10: std_logic_vector(3 downto 0) := "0000";
	signal div10: std_logic_vector(3 downto 0) := "0000";
	signal sub10: std_logic_vector(4 downto 0) := "00000";
	
begin
	mult_XY <= std_logic_vector(unsigned(X_in) * unsigned(Y_in));
	Z_temp <= std_logic_vector(unsigned('0'&rest10) + unsigned('0'&C_in)); 

	convercao: binary2bcd port map(mult_XY, div10, rest10);
	--estao aqui para prevenir latches
	sub10 <= std_logic_vector(unsigned(Z_temp) - "01010"); --4 primeiros bits

	process(Z_temp, mult_XY, div10, sub10)
		begin
			if(Z_temp > "01001") then
				C_out <= std_logic_vector(unsigned(div10) + "0001");
				Z_out <= sub10(3 downto 0);
			else
				C_out <= div10;
				Z_out <= Z_temp(3 downto 0);
			end if;
	end process;
	
end Behavioral;

