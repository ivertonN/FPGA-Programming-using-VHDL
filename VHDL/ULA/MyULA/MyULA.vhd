----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:00:24 04/06/2019 
-- Design Name: 
-- Module Name:    MyULA - Behavioral 
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

entity MyULA is
    Port ( entradaX : in  STD_LOGIC_VECTOR (3 downto 0);
           entradaY : in  STD_LOGIC_VECTOR (3 downto 0);
           SeletorOperacao : in  STD_LOGIC_VECTOR (2 downto 0);
           saidaZ : out  STD_LOGIC_VECTOR (3 downto 0);
           CarryBorrow : out  STD_LOGIC);
end MyULA;

architecture Behavioral of MyULA is

	Component MyAnd4
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;
	
	Component MyOr4
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;
	
	Component Not4
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;
	
	Component MyXor4
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0));
	end Component;
	
	Component MySum4
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
	end Component;
	
	Component MySub4
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC);
	end Component;
	
	Component MyFourBitMultiplier
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (7 downto 0));
	end Component;
	
	Component MyPlus1
		Port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
	end Component;

	--Operacoes lógicas
	signal saidaMyAnd4: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMyOr4: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMyNot4: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMyXor4: STD_LOGIC_VECTOR (3 downto 0);

	--Operacoes Aritméticas
	signal saidaMySum4: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMyPlus1: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMySub4: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMyMult4: STD_LOGIC_VECTOR (7 downto 0);
	signal CoutMySum4: STD_LOGIC;
	signal CoutMyPlus1: STD_LOGIC;
	signal BorrowMySub4: STD_LOGIC;

begin
	
	--Operacoes lógicas
	TMyAnd4: MyAnd4 PORT MAP(entradaX, entradaY, saidaMyAnd4);
	TMyOr4: MyOr4 PORT MAP(entradaX, entradaY, saidaMyOr4);
	TMyNot4: Not4 PORT MAP(entradaX, saidaMyNot4);
	TMyXor4: MyXor4 PORT MAP(entradaX, entradaY, saidaMyXor4);
	--Operacoes Aritméticas
	TMySum4: MySum4 PORT MAP(entradaX, entradaY, saidaMySum4, CoutMySum4);
	TMyPlus1: MyPlus1 PORT MAP(entradaX, saidaMyPlus1, CoutMyPlus1);
	TMySub4: MySub4 PORT MAP(entradaX, entradaY, saidaMySub4, BorrowMySub4);
	TMyMult4: MyFourBitMultiplier PORT MAP(entradaX, entradaY, saidaMyMult4);

	WITH SeletorOperacao select
		saidaZ <= 	saidaMyAnd4 when "000",
						saidaMyOr4 when "001",
						saidaMyNot4 when "010",
						saidaMyXor4 when "011",
						saidaMySum4 when "100",
						saidaMyPlus1 when "101",
						saidaMySub4 when "110",
						saidaMyMult4(3) & saidaMyMult4(2) & saidaMyMult4(1) & saidaMyMult4(0) when "111",
						"0000" when others;
	
   WITH SeletorOperacao select
		CarryBorrow <=    CoutMySum4 when "100",
								CoutMyPlus1 when "101",
								BorrowMySub4 when "110",
								'0' when others;

end Behavioral;

