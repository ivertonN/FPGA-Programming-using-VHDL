----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:48:13 06/30/2019 
-- Design Name: 
-- Module Name:    Interface_main - Behavioral 
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

entity Interface_main is
	Port(clkPlaca, ps2d, ps2c, operacao : in STD_LOGIC; 
		  LCD_DB: out std_logic_vector(7 downto 0);		--DB( 7 through 0)
        RS:out std_logic;  				--WE
        RW:out std_logic;				--ADR(0)
	   --ADR1:out std_logic;				--ADR(1)
	   --ADR2:out std_logic;				--ADR(2)
	   --CS:out std_logic;				--CSC
	   OE:out std_logic;				--OE
	   rst:in std_logic		);		--BTN
	   --rdone: out std_logic);			--WriteDone output to work with DI05 test

end Interface_main;

architecture Behavioral of Interface_main is

	Component Interface is
		 Port ( clk, ps2d, ps2c : in STD_LOGIC;
				  operacao: in STD_LOGIC;
				  display_data : out  STD_LOGIC_VECTOR (31 downto 0));
	end Component;

	Component lcd is
		 Port ( data_display:in std_logic_vector(63 downto 0);
				  LCD_DB: out std_logic_vector(7 downto 0);		--DB( 7 through 0)
				  RS:out std_logic;  				--WE
				  RW:out std_logic;				--ADR(0)
			CLK:in std_logic;				--GCLK2
			--ADR1:out std_logic;				--ADR(1)
			--ADR2:out std_logic;				--ADR(2)
			--CS:out std_logic;				--CSC
			OE:out std_logic;				--OE
			rst:in std_logic		);		--BTN
			--rdone: out std_logic);			--WriteDone output to work with DI05 test
	end Component;

	Component convercor is
		 Port ( display_data : in  STD_LOGIC_VECTOR (3 downto 0);
				  display_converted : out  STD_LOGIC_VECTOR (7 downto 0));
	end Component;

	signal display_data: std_logic_vector(31 downto 0);
	signal display_converted: std_logic_vector(63 downto 0);
	
begin
	teclado_interface: Interface port map(clkPlaca, ps2d, ps2c, operacao, display_data);
	lcd_interface: lcd port map(display_converted, LCD_DB, RS, RW, clkPlaca, OE, rst);

	convercor1: convercor port map(display_data(3 downto 0), display_converted(7 downto 0));
	convercor2: convercor port map(display_data(7 downto 4), display_converted(15 downto 8));
	convercor3: convercor port map(display_data(11 downto 8), display_converted(23 downto 16));
	convercor4: convercor port map(display_data(15 downto 12), display_converted(31 downto 24));
	convercor5: convercor port map(display_data(19 downto 16), display_converted(39 downto 32));
	convercor6: convercor port map(display_data(23 downto 20), display_converted(47 downto 40));
	convercor7: convercor port map(display_data(27 downto 24), display_converted(55 downto 48));
	convercor8: convercor port map(display_data(31 downto 28), display_converted(63 downto 56));	
	
end Behavioral;

