LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY multiply IS
   PORT(      a           : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	           b           : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				  product     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY multiply;
-------------------------------------------------------
ARCHITECTURE structural OF multiply IS
-- se crean las señales que perimiten el almacenamiento de la multiplicación 

		SIGNAL k: STD_LOGIC_VECTOR(15 DOWNTO 0);

		SIGNAL e_1,e_2,e_3: STD_LOGIC_VECTOR(3 DOWNTO 0);  

		SIGNAL a_1,a_2,a_3: STD_LOGIC_VECTOR(3 DOWNTO 0);

		SIGNAL answer_1: STD_LOGIC_VECTOR(3 DOWNTO 0);

		SIGNAL answer_2: STD_LOGIC_VECTOR(3 DOWNTO 0);

		SIGNAL answer_3: STD_LOGIC_VECTOR(3 DOWNTO 0);

		SIGNAL salida: STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
-- en la señal k se almacenan las 14 multiplicaciones de bit por bit

k(0) <= a(0) AND b(0);

k(1) <= a(1) AND b(0);

k(2) <= a(2) AND b(0);

k(3) <= a(3) AND b(0);

k(4) <= a(0) AND b(1);

k(5) <= a(1) AND b(1);

k(6) <= a(2) AND b(1);

k(7) <= a(3) AND b(1);

k(8) <= a(0) AND b(2);

k(9) <= a(1) AND b(2);

k(10) <= a(2) AND b(2);

k(11) <= a(3) AND b(2);

k(12) <= a(0) AND b(3);

k(13) <= a(1) AND b(3);

k(14) <= a(2) AND b(3);

k(15) <= a(3) AND b(3);
-- se generan los buses que ayudan a realizar la multiplicacion 
a_1 <= '0'& k(12) & k(8) & k(4);
e_1 <= k(13) & k(9)& k(5)& k(1) ;
a_2 <=  salida(0) & answer_1(3) & answer_1(2) & answer_1(1) ;
e_2 <= k(14) & k(10) & k(6) & k(2)  ;
a_3 <=  salida(1) & answer_2(3) & answer_2(2) & answer_2(1) ;
e_3 <= k(15) & k(11) & k(7) & k(3);
-- como es una multiplicacion de 4 bits se realizan las tres sumas que indica el algoritmo
adittion_1: ENTITY work.sum4bits PORT MAP(a => a_1, b => e_1, Cin => '0', s => answer_1, Cout => salida(0));

adittion_2: ENTITY work.sum4bits PORT MAP(a => a_2, b => e_2, Cin => '0', s => answer_2, Cout => salida(1));

adittion_3: ENTITY work.sum4bits PORT MAP(a => a_3, b => e_3, Cin => '0', s => answer_3, Cout => salida(2));

product <=  salida(2) & answer_3 & answer_2(0) & answer_1(0) & k(0) ; 

END ARCHITECTURE structural;