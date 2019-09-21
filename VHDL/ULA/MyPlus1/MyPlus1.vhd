----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:16 04/06/2019 
-- Design Name: 
-- Module Name:    MyPlus1 - Behavioral 
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

entity MyPlus1 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end MyPlus1;

architecture Behavioral of MyPlus1 is

	Component MySum4
	Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
         B : in  STD_LOGIC_VECTOR (3 downto 0);
         S : out  STD_LOGIC_VECTOR (3 downto 0);
         Cout : out  STD_LOGIC);
	end Component;

begin
	Soma: MySum4 PORT MAP(A, "0001", Z, Cout);	

end Behavioral;

