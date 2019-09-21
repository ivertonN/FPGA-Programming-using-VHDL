----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:40:24 04/05/2019 
-- Design Name: 
-- Module Name:    MySub4 - Behavioral 
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

entity MySub4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC);
end MySub4;

architecture Behavioral of MySub4 is
	
	Component MyFourBit2Complement
    PORT( A : IN  std_logic_vector(3 downto 0);
          Z : OUT  std_logic_vector(3 downto 0);
			 ZERO: OUT std_logic);	
	end Component;
		  
	Component MySum4
    PORT( A : IN  std_logic_vector(3 downto 0);
          B : IN  std_logic_vector(3 downto 0);
          S : OUT  std_logic_vector(3 downto 0);
          Cout : OUT  std_logic );
	end Component;

	signal ComplementB: std_logic_vector(3 downto 0);
	signal C: std_logic;
	signal CarryZero: std_logic;

begin
	Complement2: MyFourBit2Complement PORT MAP(B, ComplementB, CarryZero);
	Sum1: MySum4 PORT MAP(A, ComplementB, Z, C);
	
	Bout <= not (C or CarryZero);

end Behavioral;

