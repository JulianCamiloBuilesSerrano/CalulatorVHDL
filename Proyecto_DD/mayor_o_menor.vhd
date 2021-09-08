LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY mayor_o_menor IS
   PORT(      
	     A   :   IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        B   :   IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  
		  Mayor:  OUT STD_LOGIC;
		  
		  Menor:  OUT STD_LOGIC);

END ENTITY mayor_o_menor;
-------------------------------------------------------
ARCHITECTURE structural OF mayor_o_menor IS

BEGIN

A_mayor: Mayor <= (A(3) AND NOT (B(3))) OR ((NOT (A(3) XOR B(3))) AND A(2) AND (NOT B(2))) OR
                  ((NOT (A(3) XOR B(3))) AND (NOT (A(2) XOR B(2))) AND A(1) AND NOT B(1))  OR 
						((NOT (A(3) XOR B(3))) AND (NOT (A(2) XOR B(2))) AND (NOT (A(1) XOR B(1))) AND
						A(0) AND NOT B(0));
A_menor: Menor <= ((NOT A(3)) AND B(3)) OR ((NOT (A(3) XOR B(3))) AND (NOT A(2)) AND B(2)) OR
                  ((NOT (A(3) XOR B(3))) AND (NOT (A(2) XOR B(2))) AND (NOT A(1)) AND B(1))  OR 
						((NOT (A(3) XOR B(3))) AND (NOT (A(2) XOR B(2))) AND (NOT (A(1) XOR B(1))) AND
						(NOT A(0)) AND B(0));

END ARCHITECTURE structural;