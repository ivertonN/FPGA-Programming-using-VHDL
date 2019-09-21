----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:20:19 04/05/2019 
-- Design Name: 
-- Module Name:    MyFourBitMultiplier - Behavioral 
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

entity MyFourBitMultiplier is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (7 downto 0));
end MyFourBitMultiplier;

architecture Behavioral of MyFourBitMultiplier is

	Component MySum4
		Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
             B : in  STD_LOGIC_VECTOR (3 downto 0);
             S : out  STD_LOGIC_VECTOR (3 downto 0);
             Cout : out  STD_LOGIC);
	end Component;
	
	signal Z1: STD_LOGIC_VECTOR (3 downto 0);
	signal Z2: STD_LOGIC_VECTOR (3 downto 0);
	signal Z3: STD_LOGIC_VECTOR (3 downto 0);
	signal Z4: STD_LOGIC_VECTOR (3 downto 0);
	
	signal C: STD_LOGIC_VECTOR (2 downto 0);
	signal S1: STD_LOGIC_VECTOR (3 downto 0);
	signal S2: STD_LOGIC_VECTOR (3 downto 0);
	signal S3: STD_LOGIC_VECTOR (3 downto 0);

begin
	Z1(0) <= A(0) and B(0);
	Z1(1) <= A(1) and B(0); 
	Z1(2) <= A(2) and B(0); 
	Z1(3) <= A(3) and B(0);
	
	Z2(0) <= A(0) and B(1);
	Z2(1) <= A(1) and B(1); 
	Z2(2) <= A(2) and B(1); 
	Z2(3) <= A(3) and B(1); 

	Z3(0) <= A(0) and B(2);
	Z3(1) <= A(1) and B(2); 
	Z3(2) <= A(2) and B(2); 
	Z3(3) <= A(3) and B(2); 

	Z4(0) <= A(0) and B(3);
	Z4(1) <= A(1) and B(3); 
	Z4(2) <= A(2) and B(3); 
	Z4(3) <= A(3) and B(3); 

	Sum1:
		MySum4 PORT MAP(
			A => Z2, 
			B(3) => '0', 
			B(2) => Z1(3), 
			B(1) => Z1(2), 
			B(0) => Z1(1), 
			S => S1,
			Cout => C(0));
	
	Sum2:
		MySum4 PORT MAP(
			A => Z3, 
			B(3) => C(0), 
			B(2) => S1(3), 
			B(1) => S1(2), 
			B(0) => S1(1), 
			S => S2, 
			Cout => C(1));
	
	Sum3:
		MySum4 PORT MAP(
			A => Z4, 
			B(3) => C(1), 
			B(2) => S2(3), 
			B(1) => S2(2), 
			B(0) => S2(1), 
			S => S3, 
			Cout => C(2));
		
	Z(0) <= Z1(0);
	Z(1) <= S1(0);
	Z(2) <= S2(0);
	Z(3) <= S3(0);
	Z(4) <= S3(1);
	Z(5) <= S3(2);
	Z(6) <= S3(3);
	Z(7) <= C(2);
		
end Behavioral;

