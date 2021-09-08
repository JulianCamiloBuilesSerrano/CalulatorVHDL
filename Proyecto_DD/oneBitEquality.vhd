-------------------------------------------------------
-- oneBitEquality compares two bits to determine if the value
-- that they hold is equal. The output bit eq is set if the
-- inputs are holdeing the same value.
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY oneBitEquality IS
	PORT(		input_0		:	IN		STD_LOGIC;
				input_1		:	IN		STD_LOGIC;
				mayor       :	OUT	STD_LOGIC;
 				menor       :	OUT	STD_LOGIC);
END ENTITY oneBitEquality;
-------------------------------------------------------
ARCHITECTURE gateLevel OF oneBitEquality IS
	SIGNAL 	p0		:	STD_LOGIC; --used to determine if both bits are 1
	SIGNAL 	p1		:	STD_LOGIC; -- used to determine if both bits are 0
-------------------------------------------------------
BEGIN

mayor <= input_0 AND (NOT input_1);

menor <= (NOT input_0) AND input_1;
	
END ARCHITECTURE gateLevel;