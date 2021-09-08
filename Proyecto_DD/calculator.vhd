LIBRARY IEEE;

USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY calculator IS
	PORT(		digit_1				:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
				
				digit_2				:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
				
				result_1				:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);

				result_2				:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
				
				result_3				:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
				
				result_4				:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
				
				symbol            :  IN    STD_LOGIC_VECTOR(1 DOWNTO 0));
				
END ENTITY calculator;
-------------------------------------------------------
ARCHITECTURE behaviour OF calculator IS

SIGNAL       answer_1, answer_2    :	STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN 

--Asignación de los dígitos a los 7 segmentos correspondientes
selector: ENTITY work.selector PORT MAP(
				digit_1 => digit_1,
				digit_2 => digit_2,
				symbol => symbol,
				result_1 => answer_1,
				result_2 => answer_2);

number_1: ENTITY work.bin_to_sseg PORT MAP(bin => digit_1, sseg => result_1);

number_2: ENTITY work.bin_to_sseg PORT MAP(bin => digit_2, sseg => result_2);

number_3: ENTITY work.bin_to_sseg_ans PORT MAP(bin => answer_1, sseg => result_3);

number_4: ENTITY work.bin_to_sseg_ans PORT MAP(bin => answer_2, sseg => result_4);


END behaviour;