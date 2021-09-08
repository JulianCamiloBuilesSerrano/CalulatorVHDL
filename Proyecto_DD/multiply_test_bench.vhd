LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY multiply_test_bench IS
END ENTITY multiply_test_bench;

ARCHITECTURE structural OF multiply_test_bench IS

SIGNAL a     :STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL b     :STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL sal     :STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

simulacion: ENTITY work.multiply PORT MAP(a => a, b => b, product => sal);

SIGNAL_GENERATION: PROCESS 

	BEGIN 

		a <= "0000";

		b <= "0000";

		WAIT FOR 200 ns;

		a <= "0001";

		b <= "0110";

		WAIT FOR 200 ns;

		a <= "1111";

		b <= "1111";

		WAIT FOR 200 ns;
		a <= "1111";

		b <= "0000";

		WAIT FOR 200 ns;
		a <= "1001";

		b <= "1001";

		WAIT FOR 200 ns;
		

	END PROCESS SIGNAL_GENERATION; 

END ARCHITECTURE structural;