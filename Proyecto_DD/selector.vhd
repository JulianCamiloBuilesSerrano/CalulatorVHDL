LIBRARY IEEE;

USE ieee.std_logic_1164.all;
-------------------------------------------------------
-- digit_1 => indica el primero numero a operar 
-- digit_2 => indica el segundo numero a operar 
-- symbol => indica la operacion a generar
-- result_1 => indicia el digito de las decenas
-- result_2 => indica el digito de las unidades 
ENTITY selector IS
	PORT(		digit_1				:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
				
				digit_2				:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
				
				symbol            :  IN    STD_LOGIC_VECTOR(1 DOWNTO 0);
				
				result_1 				:	OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0);
				
				result_2 				:	OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0));
				
END ENTITY selector;
-------------------------------------------------------
ARCHITECTURE behaviour OF selector IS

SIGNAL      add, s, answer_1, answer_2,add_dec,add_uni,mul_dec,mul_uni    :	STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL      Cout, Mayor, Menor, Coutr            :  STD_LOGIC;

SIGNAL		product,add_8								:	STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL		negativo								:  STD_LOGIC_VECTOR(3 DOWNTO 0);      

BEGIN 

		add_8 <= "000" & Cout & add;
		
		adittion: ENTITY work.sum4bits PORT MAP(a => digit_1, b => digit_2, Cin => '0', s => add, Cout => Cout);

		substraction: ENTITY work.sum4bits PORT MAP(a => digit_1, b => digit_2, Cin => '1', s => s, Cout => Coutr);

		multiplication: ENTITY work.multiply PORT MAP(a => digit_1, b => digit_2,product => product);

		decision: ENTITY work.mayor_o_menor PORT MAP(A => digit_1, B => digit_2, Mayor => Mayor, Menor => Menor);

		complemento:ENTITY work.complements PORT MAP(a => s, salida => negativo);
		
		
		decen_uni_multiplicacion: ENTITY work.decen_uni PORT MAP(num =>product,result_1 => mul_dec, result_2 => mul_uni);
		
		decen_uni_suma: ENTITY work.decen_uni PORT MAP(num =>add_8,result_1 => add_dec, result_2 => add_uni);
				 
		selection: PROCESS(symbol)
			BEGIN
			-- 1.se evalua si es es suma
			-- 2.se evalua si es es resta
			-- 3.evalua si es multiplication
			IF (symbol = "11") THEN 
				 result_1 <= add_dec;
				 result_2 <= add_uni;
			-- la separacion de unidades y decenas
			ELSIF (symbol = "01") THEN 					
				IF Menor = '1' THEN
					result_1 <= "1010"; --simbolo negativo
					result_2 <= negativo;
				ELSE
					result_1 <= "0000"; --simbolo positivo
					result_2 <= s;
				END IF;
			ELSE
				result_1 <= mul_dec;
				result_2 <= mul_uni;
			
			END IF;
		END PROCESS selection;
END behaviour;