----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:02:44 04/05/2019 
-- Design Name: 
-- Module Name:    MyFourBit2Complement - Behavioral 
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

entity MyFourBit2Complement is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0);
			  ZERO: out STD_LOGIC);
end MyFourBit2Complement;

architecture Behavioral of MyFourBit2Complement is

	Component MySum4
	Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
          B : in  STD_LOGIC_VECTOR (3 downto 0);
          S : out  STD_LOGIC_VECTOR (3 downto 0);
          Cout : out  STD_LOGIC);
	end Component;
	
	Component Not4
	Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
          Z : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;
	
	signal X: STD_LOGIC_VECTOR (3 downto 0);
	
begin
	Not1: Not4 PORT MAP(A, X);
	Sum1: MySum4 PORT MAP(X,"0001",Z, ZERO);

end Behavioral;


