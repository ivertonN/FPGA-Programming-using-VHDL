----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:10 06/07/2019 
-- Design Name: 
-- Module Name:    MultNDigit - Behavioral 
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

entity MultNDigit is
    Port ( X_in : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_in : in  STD_LOGIC_VECTOR (15 downto 0);
           Z_out : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0'));
end MultNDigit;

architecture Behavioral of MultNDigit is

	Component MultOneDigit is
		 Port ( X_in : in  STD_LOGIC_VECTOR (3 downto 0) := "0000"; 
				  Y_in : in  STD_LOGIC_VECTOR (3 downto 0) := "0000";
				  C_in : in  STD_LOGIC_VECTOR (3 downto 0) := "0000";
				  C_out : out  STD_LOGIC_VECTOR (3 downto 0);
				  Z_out : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;
	
	Component SumNDigit is
		Port ( X_in : in  STD_LOGIC_VECTOR (15 downto 0);
				 Y_in : in  STD_LOGIC_VECTOR (15 downto 0);
			    Z_out: out STD_LOGIC_VECTOR (19 downto 0) := (others => '0'));
	end Component;

	type BCD_Z	is array(7 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
	type BCD_XY is array(3 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
	type BCD_Ctemp is array(3 downto 0) of STD_LOGIC_VECTOR(3 downto 0);

	signal Z_temp1 : BCD_Z := (others => "0000");
	signal Z_temp2 : BCD_Z := (others => "0000");
	signal Z_temp3 : BCD_Z := (others => "0000");
	signal Z_temp4 : BCD_Z := (others => "0000");
	signal X_temp : BCD_XY;
	signal Y_temp : BCD_XY;
	
	signal Z_tempOut : BCD_Z := (others => "0000"); -- guardar resultado final;
	signal Z_sum1 : std_logic_vector(19 downto 0) := (others => '0');
	signal Z_sum2 : std_logic_vector(19 downto 0) := (others => '0');
	signal Z_sum3 : std_logic_vector(19 downto 0) := (others => '0');
	signal Z_sum4 : std_logic_vector(19 downto 0) := (others => '0');

	signal C_temp1 : BCD_Ctemp := (others=>"0000"); 
	signal C_temp2 : BCD_Ctemp := (others=>"0000"); 
	signal C_temp3 : BCD_Ctemp := (others=>"0000"); 
	signal C_temp4 : BCD_Ctemp := (others=>"0000");

	signal auxiliar_Soma1: std_Logic_vector(15 downto 0);
	signal auxiliar_Soma11: std_Logic_vector(15 downto 0);

	signal auxiliar_Soma2: std_Logic_vector(15 downto 0);
	signal auxiliar_Soma22: std_Logic_vector(15 downto 0);

	signal auxiliar_Soma3: std_Logic_vector(15 downto 0);
	signal auxiliar_Soma33: std_Logic_vector(15 downto 0);

	signal auxiliar_Soma4: std_Logic_vector(11 downto 0);
	signal auxiliar_Soma44: std_Logic_vector(11 downto 0);
	signal SomaComCarrys: std_logic_vector (11 downto 0);
	
begin
	X_temp(3) <= X_in(15 downto 12);
	X_temp(2) <= X_in(11 downto 8);
	X_temp(1) <= X_in(7 downto 4);
	X_temp(0) <= X_in(3 downto 0);
	Y_temp(3) <= Y_in(15 downto 12);
	Y_temp(2) <= Y_in(11 downto 8);
	Y_temp(1) <= Y_in(7 downto 4);
	Y_temp(0) <= Y_in(3 downto 0);

	--XYZW * ABCD = X*ABCD + 10*Y*ABCD + ... = Z_temp1 + 10*Z_temp2 + 100*Z_temp3 + 1000*Z_temp4
	--Z_temp1
	product_X1: MultOneDigit port map(X_temp(0), Y_temp(0), "0000",C_temp1(0), Z_temp1(0)); 
	product_X2: MultOneDigit port map(X_temp(0), Y_temp(1), C_temp1(0), C_temp1(1), Z_temp1(1)); 
	product_X3: MultOneDigit port map(X_temp(0), Y_temp(2), C_temp1(1), C_temp1(2), Z_temp1(2)); 
	product_X4: MultOneDigit port map(X_temp(0), Y_temp(3), C_temp1(2), C_temp1(3), Z_temp1(3));
	Z_temp1(4) <= C_temp1(3);
   --Z_temp2
	product_Y1: MultOneDigit port map(X_temp(1), Y_temp(0), "0000", C_temp2(0), Z_temp2(0)); 
	product_Y2: MultOneDigit port map(X_temp(1), Y_temp(1), C_temp2(0), C_temp2(1), Z_temp2(1)); 
	product_Y3: MultOneDigit port map(X_temp(1), Y_temp(2), C_temp2(1), C_temp2(2), Z_temp2(2)); 
	product_Y4: MultOneDigit port map(X_temp(1), Y_temp(3), C_temp2(2), C_temp2(3), Z_temp2(3)); 
	Z_temp2(4) <= C_temp2(3);
   --Z_temp3
	productW1: MultOneDigit port map(X_temp(2), Y_temp(0), "0000", C_temp3(0), Z_temp3(0)); 
	productW2: MultOneDigit port map(X_temp(2), Y_temp(1), C_temp3(0), C_temp3(1), Z_temp3(1)); 
	productW3: MultOneDigit port map(X_temp(2), Y_temp(2), C_temp3(1), C_temp3(2), Z_temp3(2)); 
	productW4: MultOneDigit port map(X_temp(2), Y_temp(3), C_temp3(2), C_temp3(3), Z_temp3(3)); 
	Z_temp3(4) <= C_temp3(3);
	--Z_temp4
	productZ1: MultOneDigit port map(X_temp(3), Y_temp(0), "0000", C_temp4(0), Z_temp4(0)); 
	productZ2: MultOneDigit port map(X_temp(3), Y_temp(1), C_temp4(0), C_temp4(1), Z_temp4(1)); 
	productZ3: MultOneDigit port map(X_temp(3), Y_temp(2), C_temp4(1), C_temp4(2), Z_temp4(2)); 
	productZ4: MultOneDigit port map(X_temp(3), Y_temp(3), C_temp4(2), C_temp4(3), Z_temp4(3)); 
	Z_temp4(4) <= C_temp4(3);

	--    0      0     0   Z1(4) Z1(3) Z1(2) Z1(1) Z1(0) 
	--    0      0   Z2(4) Z2(3) Z2(2) Z2(1) Z2(0)
   --    0    Z3(4) Z3(3) Z3(2) Z3(1) Z3(0)
   -- + Z4(4) Z4(3) Z4(2) Z4(1) Z4(0)
	Z_tempOut(0) <= Z_temp1(0);
	
	auxiliar_Soma1 <= Z_temp1(4)&Z_temp1(3)&Z_temp1(2)&Z_temp1(1);
	auxiliar_Soma11 <= Z_temp2(3)&Z_temp2(2)&Z_temp2(1)&Z_temp2(0);
	Soma1: SumNDigit port map(auxiliar_Soma1, auxiliar_Soma11, Z_sum1);
	Z_tempOut(1) <= Z_sum1(3 downto 0);

	auxiliar_Soma2 <= Z_temp2(4)&Z_sum1(15 downto 4);
	auxiliar_Soma22 <= Z_temp3(3)&Z_temp3(2)&Z_temp3(1)&Z_temp3(0);
	Soma2: SumNDigit port map(auxiliar_Soma2, auxiliar_Soma22, Z_sum2);
	Z_tempOut(2) <= Z_sum2(3 downto 0);
	
	auxiliar_Soma3 <= Z_temp3(4)&Z_sum2(15 downto 4);
	auxiliar_Soma33 <= Z_temp4(3)&Z_temp4(2)&Z_temp4(1)&Z_temp4(0);
	Soma3: SumNDigit port map(auxiliar_Soma3, auxiliar_Soma33, Z_sum3);
	Z_tempOut(4) <= Z_sum3(7 downto 4);
	Z_tempOut(3) <= Z_sum3(3 downto 0);
	
	auxiliar_Soma4 <= Z_temp4(4)&Z_sum3(15 downto 12)&Z_sum3(11 downto 8);
	auxiliar_Soma44 <= Z_sum3(19 downto 16)&Z_sum2(19 downto 16)&Z_sum1(19 downto 16);
	SomaComCarrys <= std_logic_vector(unsigned(auxiliar_Soma4) + unsigned(Auxiliar_Soma44));
	Z_tempOut(7) <= SomaComCarrys (11 downto 8);
	Z_tempOut(6) <= SomaComCarrys(7 downto 4);
	Z_tempOut(5) <= SomaComCarrys(3 downto 0);
	
	Z_out <= Z_tempOut(7)&Z_tempOut(6)&Z_tempOut(5)&Z_tempOut(4)&Z_tempOut(3)&Z_tempOut(2)&Z_tempOut(1)&Z_tempOut(0);
	
end Behavioral;

