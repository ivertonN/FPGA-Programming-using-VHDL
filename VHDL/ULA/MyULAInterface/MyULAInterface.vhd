----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:27 04/21/2019 
-- Design Name: 
-- Module Name:    MyULAInterface - Behavioral 
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


entity MyULAInterface is
	port (clk_50Mhz: in std_logic; --clock de 50MHz da placa 
			rst: in std_logic; --rst botao
			botaoEntrada: in std_logic; -- botão para entrar com o valor dos switches
			entradaUla: in std_logic_vector (3 downto 0); -- switches
			ledSelecao : out std_logic_vector (3 downto 0) := "1000" ;	-- leds para sinalizar o que está sendo mostrado
			led_Show : out std_logic_vector (3 downto 0)); -- leds para mostrar os vetores durante cada estado. 
         
end MyULAInterface;

architecture interface of MyULAInterface is

	component contador6sec
	port(  clk_50Mhz : in std_logic;
			 ENABLE: in std_logic;
			 CLEAR: in std_logic;
		    counter : out integer range 300000000 downto 0;
		    clk_6sec : out std_logic := '0' --apenas para de teste do programa, clock com periodo de 6 segundos;
        );

	end component;

	component MyULA 
    Port ( entradaX : in  STD_LOGIC_VECTOR (3 downto 0);
           entradaY : in  STD_LOGIC_VECTOR (3 downto 0);
           SeletorOperacao : in  STD_LOGIC_VECTOR (2 downto 0);
           saidaZ : out  STD_LOGIC_VECTOR (3 downto 0);
           CarryBorrow : out  STD_LOGIC);
	end component;

	signal clk_6sec: std_logic;

	type state is (state_A,state_B,state_Operacao,state_Result);
	signal estado_Atual: state := state_A;
	signal indiceEstado: std_logic_vector (1 downto 0) := "10";
	signal XTemp: STD_LOGIC_VECTOR (3 downto 0);
	signal YTemp: STD_LOGIC_VECTOR (3 downto 0);
	signal SeletorOperacao: STD_LOGIC_VECTOR (2 downto 0) := "000";
	signal CarryBorrow: STD_LOGIC;
	signal SaidaZ : STD_LOGIC_VECTOR (3 downto 0);
	signal numeroContador: integer range 300000000 downto 0;	
	
begin	
	UnidadeLogicoAritmetica: myULA port map (XTemp, YTemp, SeletorOperacao, SaidaZ, CarryBorrow);
	contador6Segundos: contador6sec port map (clk_50Mhz, '1', botaoEntrada, numeroContador, clk_6sec);
		
	maquinaDeEstado: process(botaoEntrada, rst, estado_Atual, numeroContador, entradaUla, XTemp, YTemp, SaidaZ) 
	begin
		if rst = '1' then		
			XTemp <= "0000";
			YTemp <= "0000";
			estado_Atual <= state_A;
			indiceEstado <= "00";
			SeletorOperacao <= "000";
			led_Show <= entradaUla;
			ledSelecao <= "1000";
			indiceEstado <= "10";
					
		elsif(botaoEntrada'event and botaoEntrada = '1') then
			if(numeroContador >= 5000000) then
				case estado_Atual is
					when state_A =>
						XTemp <= entradaUla ;
						ledSelecao <= "0100";
						indiceEstado <= "01" ;
						estado_Atual <= state_B;
						led_Show <= entradaUla;

					when state_B =>
						YTemp <= entradaUla;
						ledSelecao <= "0010";
						indiceEstado <= "00";
						estado_Atual <= state_Operacao;
						led_Show <= entradaUla;

					when state_Operacao =>
						seletorOperacao <= entradaUla(2) & entradaUla(1) & entradaUla(0);					
						ledSelecao <= "0001";
						indiceEstado <= "11";
						estado_Atual <= state_Result;
						led_Show <= '0' & entradaUla(2) & entradaUla(1) & entradaUla(0);
				
					when state_Result =>
						seletorOperacao <= entradaUla(2) & entradaUla(1) & entradaUla(0);						
				end case;
			end if;
		end if;
		
		if(estado_Atual = state_Result) then					 
			if numeroContador  < 100000000 then	-- 2 segundos de contagem	
				led_Show <= XTemp;		--Entrada X	
				ledSelecao <= "1000";
			elsif ((numeroContador >= 100000000) and (numeroContador < 200000000))  then --2 a 4 segundos
				led_Show <= YTemp;    -- Entrada Y
				ledSelecao <= "0100";  
			elsif numeroContador >= 200000000  then			-- entre 4 e 6 segundos
				led_Show <= SaidaZ;    			-- Resultado
				ledSelecao <= "0001";
			end if;
		
		elsif(estado_Atual = state_A) then 
			led_Show <= entradaUla;
		elsif(estado_Atual = state_B) then 
			led_Show <= entradaUla;
		elsif(estado_atual = state_Operacao) then
			led_Show <= '0' & entradaUla(2) & entradaUla(1) & entradaUla(0);
		end if;
	end process maquinaDeEstado;
end interface;