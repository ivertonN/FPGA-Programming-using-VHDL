----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:48:12 04/04/2019 
-- Design Name: 
-- Module Name:    MySum4 - Behavioral 
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

entity MySum4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end MySum4;

architecture Behavioral of MySum4 is
	
	component MySum1
		Port ( A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		S : out STD_LOGIC;
		Cout : out STD_LOGIC);
	end component;	
	
	signal X: STD_LOGIC_VECTOR(3 downto 0);
	signal Y: STD_LOGIC_VECTOR(2 downto 0);
	signal C: STD_LOGIC_VECTOR(2 downto 0);

begin
	Sum1: MySum1 PORT MAP(A(0),B(0),'0',S(0),X(0));
	Sum2: MySum1 PORT MAP(A(1),B(1),'0',Y(0),X(1));
	Sum3: MySum1 PORT MAP(A(2),B(2),'0',Y(1),X(2));
	Sum4: MySum1 PORT MAP(A(3),B(3),'0',Y(2),X(3));
	
	Sum5: MySum1 PORT MAP(X(0),Y(0),'0',S(1),C(0));
	Sum6: MySum1 PORT MAP(X(1),Y(1),C(0),S(2),C(1));
	Sum7: MySum1 PORT MAP(X(2),Y(2),C(1),S(3),C(2));
	Cout <= X(3) or C(2);  

end Behavioral;

