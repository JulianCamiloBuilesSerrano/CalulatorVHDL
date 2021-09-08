LIBRARY IEEE;

USE ieee.std_logic_1164.all;

ENTITY complements IS

    PORT(
        a   :   IN  STD_LOGIC_VECTOR(3 DOWNTO 0);

        salida   :   OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY complements;

ARCHITECTURE getLevel OF complements IS

BEGIN

	WITH a SELECT
				salida <=
					"0000" WHEN "0000",-- 0
					"0001" WHEN "1111", -- -1
					"0010" WHEN "1110",-- -2 
					"0011" WHEN "1101",-- -3
					"0100" WHEN "1100",-- -4
					"0101" WHEN "1011",-- -5
					"0110" WHEN "1010",-- -6
					"0111" WHEN "1001",-- 7
					"1000" WHEN "1000",-- -8
					"1001" WHEN "0111",--0 -9
					"1111" WHEN OTHERS;

END ARCHITECTURE getLevel;