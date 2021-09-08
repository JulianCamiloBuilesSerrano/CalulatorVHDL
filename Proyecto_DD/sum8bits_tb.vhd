LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY sum8bits_tb IS
END ENTITY sum8bits_tb;

ARCHITECTURE structural OF sum8bits_tb IS

SIGNAL a     :STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL b     :STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL s     :STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL Cin,Cout		: STD_LOGIC;

BEGIN

simulacion: ENTITY work.sum8bits PORT MAP(
			a  => a ,
			b => b,
			Cin=> Cin,
			s =>s,
			Cout=> Cout);

SIGNAL_GENERATION: PROCESS 

	BEGIN 
		--------------------
		a <= "00000000";

		b <= "00000000";
		
		Cin <= '0';
		WAIT FOR 200 ns;
		--------------------
		a <= "00000001";

		b <= "00000001";
		
		Cin <= '0';
		WAIT FOR 200 ns;
		--------------------
		a <= "00001000";

		b <= "00001000";
		
		Cin <= '0';
		WAIT FOR 200 ns;
		--------------------
		a <= "00001000";

		b <= "00000010";
		
		Cin <= '1';
		WAIT FOR 200 ns;
		--------------------
		a <= "00010000";

		b <= "00001010";
		
		Cin <= '1';
		WAIT FOR 200 ns;

		
		

	END PROCESS SIGNAL_GENERATION; 

END ARCHITECTURE structural;