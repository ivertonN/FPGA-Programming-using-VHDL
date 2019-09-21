----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:31 06/28/2019 
-- Design Name: 
-- Module Name:    Interface - Behavioral 
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

entity Interface is
    Port ( clk, ps2d, ps2c : in STD_LOGIC;
			  operacao: in STD_LOGIC;
           display_data : out  STD_LOGIC_VECTOR (31 downto 0));
end Interface;

architecture Behavioral of Interface is

Component kb_code is
   generic(W_SIZE: integer:=2);  -- 2^W_SIZE words in FIFO
   port (
      clk, reset: in  std_logic;
      ps2d, ps2c: in  std_logic;
      rd_key_code: in std_logic;
      key_code: out std_logic_vector(7 downto 0) := (others => '0');
      kb_buf_empty: out std_logic := '1'
   );
end Component;

Component key2ascii is
   port (
      key_code: in std_logic_vector(7 downto 0);
      ascii_code: out std_logic_vector(7 downto 0));
end Component;

Component MultNDigit is
    Port ( X_in : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_in : in  STD_LOGIC_VECTOR (15 downto 0);
           Z_out : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0'));
end Component;

Component SumNDigit is
	Port ( X_in : in  STD_LOGIC_VECTOR (15 downto 0);
          Y_in : in  STD_LOGIC_VECTOR (15 downto 0);
          Z_out : out  STD_LOGIC_VECTOR (19 downto 0) := (others => '0'));
end Component;

type state is (idle, ra1, ra2, ra3, ra4, NumA, rb1, rb2, rb3, rb4, NumB);
type BCD is array (3 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
type display is array (7 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
signal stateAtual: state := ra1;
signal stateNext: state;
signal stateEnter: state;
signal RegA: BCD := (others => (others => '0'));
signal RegB: BCD := (others => "0000");

--special key_convertida
constant enter : STD_LOGIC_VECTOR(7 downto 0) := "00001101";
--utilizaremos o vetor 1111 para representar o space que sera tratado pelo programa principal
--os outros numeros serao tratados como 0000 ate 1001 (0 a 9)
-- os vetores 1010, 1011, 1100, 1101, 1110 nao serao utilizados.
constant space : STD_LOGIC_VECTOR(3 downto 0) := "1111";
constant others_keys : STD_LOGIC_VECTOR (7 downto 0) := "00101010";

signal display_temp : display := (others => (others => '0'));
signal resultOperacao : STD_LOGIC_VECTOR (31 downto 0) := (others => '0'); 

signal RegZ_sum : STD_LOGIC_VECTOR (19 downto 0);
signal RegZ_mult : STD_LOGIC_VECTOR (31 downto 0);

signal RegA_binario : STD_LOGIC_VECTOR (15 downto 0);
signal RegB_binario : STD_LOGIC_VECTOR (15 downto 0);

signal key_convertida : STD_LOGIC_VECTOR (7 downto 0);

signal key_code : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
signal key_empty : STD_LOGIC := '1';
signal reset: STD_LOGIC := '1';

begin
	--display
	display_data <= display_temp(7)&display_temp(6)&display_temp(5)&display_temp(4)&display_temp(3)&display_temp(2)&display_temp(1)&display_temp(0);

	--"ULA" Fazer operacao assincrona
	RegA_binario <= RegA(3)&RegA(2)&RegA(1)&RegA(0);
	RegB_binario <= RegB(3)&RegB(2)&RegB(1)&RegB(0);
	Sum_BCD: SumNDigit port map(RegA_binario, RegB_binario, RegZ_sum);
	Mult_BCD: MultNDigit port map(RegA_binario, RegB_binario, RegZ_mult);

	--teclado
	teclado_Program: kb_code port map (clk, reset, ps2d, ps2c, '0', key_code, key_empty);

	--Convercao do key_code para key_convertida para que possa ser usada as operacoes
	Convercao_key: key2ascii port map(key_code, key_convertida);


	--escolha da operacao
	
	Operacao_process: process(operacao, RegZ_sum, RegZ_mult)
	begin
		case operacao is
		when '1' => --mult
			resultOperacao <= regZ_mult;
		when '0' => --sum
			resultOperacao <= space&space&space&regZ_sum;
		when others =>
			resultOperacao <= space&space&space&regZ_sum;
		end case;
	end process;

	NextState: process (stateAtual)
	begin
		case stateAtual is
			when idle =>
				stateNext <= ra1;
				stateEnter <= ra1;
			when ra1 => 
				stateNext <= ra2;
				stateEnter <= ra1;				
			when ra2 => 
				stateNext <= ra3;
				stateEnter <= ra2;
			when ra3 => 
				stateNext <= ra4;
				stateEnter <= ra3;
			when ra4 =>
				stateNext <= NumA;
				stateEnter <= ra4;
			when NumA => 
				stateNext <= NumA;
				stateEnter <= rb1;					
			when rb1 => 
				stateNext <= rb2;
				stateEnter <= rb1;
			when rb2 => 
				stateNext <= rb3;
				stateEnter <= rb2;
			when rb3 => 
				stateNext <= rb4;
				stateEnter <= rb3;
			when rb4 => 
				stateNext <= NumB;
				stateEnter <= rb4;
			when NumB =>
				stateNext <= NumB;
				stateEnter <= idle;
			when others =>
				null;
		end case;
	end process;

	--muda de estado e guarda os valores
	mudancaDeEstado:process(clk, key_empty, key_convertida, stateAtual, reset)
	begin
	if(clk'event and clk = '1') then
		if(reset = '0') then
			if (key_empty = '0') then
				if(key_convertida = enter) then
					reset <= '1';
					stateAtual <= stateEnter;
				elsif(key_convertida = others_keys) then
					reset <= '1';
				else
					case stateAtual is
						when idle =>
							stateAtual <= stateNext;
							RegA <= (others => (others => '0'));
							RegB <= (others => (others => '0'));
							reset <= '1';
						when ra1 =>
							RegA(3) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;
							reset <= '1';
						when ra2 => 
							RegA(2) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;
							reset <= '1';					
						when ra3 => 
							RegA(1) <= key_convertida(3 downto 0);							
							stateAtual <= stateNext;	
							reset <= '1';
						when ra4 =>
							RegA(0) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;							
							reset <= '1';				
						when NumA =>
							stateAtual <= stateNext;
							reset <= '1';
						when rb1 => 
							RegB(3) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;
							reset <= '1';
						when rb2 => 
							RegB(2) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;
							reset <= '1';
						when rb3 =>
							RegB(1) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;
							reset <= '1';					
						when rb4 => 
							RegB(0) <= key_convertida(3 downto 0);
							stateAtual <= stateNext;
							reset <= '1';					
						when NumB =>
							stateAtual <= stateNext;
							reset <= '1';
						when others =>
							reset <= '1';
					end case;
				end if;
			else
				null;
			end if;
	-- após a leitura retorna reset para 0 
		elsif(reset = '1') then
			reset <= '0';
		else
			null;
		end if;
	end if;
	end process;

	--saida para o display
	DisplayProcess: process(key_convertida, stateAtual, resultOperacao, RegA, RegB)
	begin
		case stateAtual is
			when idle =>
				display_temp(7) <= resultOperacao(31 downto 28);
				display_temp(6) <= resultOperacao(27 downto 24);
				display_temp(5) <= resultOperacao(23 downto 20);
				display_temp(4) <= resultOperacao(19 downto 16);
				display_temp(3) <= resultOperacao(15 downto 12);
				display_temp(2) <= resultOperacao(11 downto 8);
				display_temp(1) <= resultOperacao(7 downto 4);
				display_temp(0) <= resultOperacao(3 downto 0);
			when ra1 => 
				display_temp(7 downto 0) <= (others => space);
			when ra2 => 
				display_temp(3) <= RegA(3);
				display_temp(7 downto 4) <= (others => space);
				display_temp(2 downto 0) <= (others => space);
			when ra3 => 
				display_temp(3) <= RegA(3);
				display_temp(2) <= RegA(2);
				display_temp(1 downto 0) <= (others => space);
				display_temp(7 downto 4) <= (others => space);
			when ra4 => 
				display_temp(3) <= RegA(3);
				display_temp(2) <= RegA(2);
				display_temp(1) <= RegA(1);
				display_temp(0) <= space;
				display_temp(7 downto 4) <= (others => space);
			when NumA =>
				display_temp(3) <= RegA(3);
				display_temp(2) <= RegA(2);
				display_temp(1) <= RegA(1);
				display_temp(0) <= RegA(0);
				display_temp(7 downto 4) <= (others => space);
			when rb1 => 
				display_temp(7 downto 0) <= (others => space);
			when rb2 => 
				display_temp(3) <= RegB(3);
				display_temp(7 downto 4) <= (others => space);
				display_temp(2 downto 0) <= (others => space);
			when rb3 => 
				display_temp(3) <= RegB(3);
				display_temp(2) <= RegB(2);
				display_temp(1 downto 0) <= (others => space);
				display_temp(7 downto 4) <= (others => space);
			when rb4 => 
				display_temp(3) <= RegB(3);
				display_temp(2) <= RegB(2);
				display_temp(1) <= RegB(1);
				display_temp(0) <= space;
				display_temp(7 downto 4) <= (others => space);
			when NumB =>
				display_temp(3) <= RegB(3);
				display_temp(2) <= RegB(2);
				display_temp(1) <= RegB(1);
				display_temp(0) <= RegB(0);
				display_temp(7 downto 4) <= (others => space);
			when others =>
				null;
		end case;
	end process;

end Behavioral;

