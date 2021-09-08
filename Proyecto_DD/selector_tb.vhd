LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY selector_tb IS
END ENTITY selector_tb;

ARCHITECTURE structural OF selector_tb IS

SIGNAL d_1,d_2,asw_1,asw_2     :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL symbol						:STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN

simulacion:ENTITY work.selector PORT MAP(
				digit_1 => d_1,
				digit_2 => d_2,
				symbol => symbol,
				result_1 => asw_1,
				result_2 => asw_2);

SIGNAL_GENERATION: PROCESS 

	BEGIN 

		d_1 <= "0000";

		d_2 <= "0000";
		
		symbol <= "11";

		WAIT FOR 200 ns;
		d_1 <= "0010";

		d_2 <= "0010";
		
		symbol <= "11";

		WAIT FOR 200 ns;
		
		d_1 <= "0100";

		d_2 <= "0001";
		
		symbol <= "10";

		WAIT FOR 200 ns;
		
		d_1 <= "1000";

		d_2 <= "1000";
		
		symbol <= "11";

		WAIT FOR 200 ns;
		d_1 <= "0100";

		d_2 <= "0010";
		
		symbol <= "01";

		WAIT FOR 200 ns;
		d_1 <= "1001";

		d_2 <= "1001";
		
		symbol <= "10";

		WAIT FOR 200 ns;
		
		d_1 <= "0111";

		d_2 <= "0100";
		
		symbol <= "11";

		WAIT FOR 200 ns;
		
		

		
		

	END PROCESS SIGNAL_GENERATION; 

END ARCHITECTURE structural;