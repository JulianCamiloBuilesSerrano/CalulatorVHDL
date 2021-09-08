-------------------------------------------------------
-- twoBitEquality compares two 2-bit words to determine 
-- it hey hold equal value. The output bit eq is set if the
-- inputs are holding the same value.
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY twoBitEquality IS
	PORT(		ina		:	IN		STD_LOGIC_VECTOR(1 DOWNTO 0);
				inb		:	IN		STD_LOGIC_VECTOR(1 DOWNTO 0);
				mayor       :	OUT	STD_LOGIC;
 				menor       :	OUT	STD_LOGIC);
END ENTITY twoBitEquality;
-------------------------------------------------------
ARCHITECTURE structural OF twoBitEquality IS
	SIGNAL mayor_0, mayor_1, menor_0, menor_1	:	STD_LOGIC;
BEGIN
	--Equality determination
	mayor <= mayor_0 AND mayor_1;
	menor <= menor_0 AND menor_1;
	
	-- Component Instantiation
	oneBitEqModule_0: ENTITY work.oneBitEquality
	PORT MAP(	input_0	=>	ina(0),
					input_1	=> inb(0),
					mayor			=> mayor_1,
					menor			=> menor_1);
						
	oneBitEqModule_1: ENTITY work.oneBitEquality
	PORT MAP(	input_0	=>	ina(1),
					input_1	=> inb(1),
					mayor			=> mayor_0,
					menor			=> menor_0);

END ARCHITECTURE structural;
	
	