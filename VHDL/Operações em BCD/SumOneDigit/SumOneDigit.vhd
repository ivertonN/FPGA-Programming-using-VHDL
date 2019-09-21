----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:07:57 05/25/2019 
-- Design Name: 
-- Module Name:    SumOneDigit - Behavioral 
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

entity SumOneDigit is
    Port ( X_in : in  STD_LOGIC_VECTOR (3 downto 0):="0000";
           Y_in : in  STD_LOGIC_VECTOR (3 downto 0):="0000";
           C_in : in  STD_LOGIC:='0';
           C_out : out  STD_LOGIC;
           Z_out : out  STD_LOGIC_VECTOR (3 downto 0));
end SumOneDigit;

architecture Behavioral of SumOneDigit is
	signal Z_temp: STD_LOGIC_VECTOR(4 downto 0) := "00000";
	signal C_temp: STD_LOGIC := '0';
	signal Z_temp2: STD_LOGIC_VECTOR(3 downto 0):= "0000";
begin
	C_temp <= Z_temp(4) or (Z_temp(3) and (Z_temp(2) or Z_temp(1)));
	C_out <= C_temp;
	Z_temp2 <= Z_temp(3 downto 0);
	
	process(C_in, C_temp, Z_temp2, X_in, Y_in)
		begin
			if(C_in = '1') then
				Z_temp <= std_logic_vector(unsigned('0'&X_in) + unsigned('0'&Y_in) + "00001");
			else
				Z_temp <= std_logic_vector(unsigned('0'&X_in) + unsigned('0'&Y_in));
			end if;

			if(C_temp = '1') then
				Z_out <= std_logic_vector("0110" + unsigned(Z_temp2));
			else
				Z_out <= Z_temp2; 
			end if;	
	end process;
	
end Behavioral;

