----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:51 05/31/2019 
-- Design Name: 
-- Module Name:    SumNDigit - Behavioral 
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

entity SumNDigit is
	Port ( X_in : in  STD_LOGIC_VECTOR (15 downto 0);
          Y_in : in  STD_LOGIC_VECTOR (15 downto 0);
          Z_out : out  STD_LOGIC_VECTOR (19 downto 0) := (others => '0'));
end SumNDigit;

architecture Behavioral of SumNDigit is 
			  
	Component SumOneDigit
		 Port ( X_in : in  STD_LOGIC_VECTOR (3 downto 0):="0000";
				  Y_in : in  STD_LOGIC_VECTOR (3 downto 0):="0000";
				  C_in : in  STD_LOGIC:='0';
				  C_out : out  STD_LOGIC;
				  Z_out : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;

	type BCD is array(4 downto 0) of STD_LOGIC_VECTOR(3 downto 0);

	signal C_temp1: STD_LOGIC := '0';
	signal C_temp2: STD_LOGIC := '0';
	signal C_temp3: STD_LOGIC := '0';
	signal C_temp4: STD_LOGIC := '0';

	signal Z_temp: BCD := (others => "0000");
	
begin
	Soma1: SumOneDigit port map (X_in(3 downto 0), Y_in(3 downto 0), '0', C_temp1, Z_temp(0));
	Soma2: SumOneDigit port map (X_in(7 downto 4), Y_in(7 downto 4), C_temp1, C_temp2, Z_temp(1));
	Soma3: SumOneDigit port map (X_in(11 downto 8), Y_in(11 downto 8), C_temp2, C_temp3, Z_temp(2));
	Soma4: SumOneDigit port map (X_in(15 downto 12), Y_in(15 downto 12), C_temp3, C_temp4, Z_temp(3));
	Z_temp(4) <= '0'&'0'&'0'&C_temp4;
	Z_out <= Z_temp(4)&Z_temp(3)&Z_temp(2)&Z_temp(1)&Z_temp(0);

end Behavioral;

