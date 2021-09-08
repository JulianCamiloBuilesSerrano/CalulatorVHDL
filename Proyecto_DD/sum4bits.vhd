LIBRARY IEEE;

USE ieee.std_logic_1164.all;

ENTITY sum4bits IS



    PORT(

        a   :   IN  STD_LOGIC_VECTOR(3 DOWNTO 0);

        b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        Cin:    IN STD_LOGIC;

        s   :   OUT STD_LOGIC_VECTOR(3 DOWNTO 0);

        Cout    :   OUT STD_LOGIC);

        

END ENTITY sum4bits;

----------------------------------------

ARCHITECTURE getLevel OF sum4bits IS

    SIGNAL signalCout   :   STD_LOGIC_VECTOR(2 DOWNTO 0);

    SIGNAL signalCin    :   STD_LOGIC_VECTOR(2 DOWNTO 0);
	 SIGNAL bsingnal		: 	 STD_LOGIC_VECTOR(3 DOWNTO 0);
    

BEGIN
		bsingnal(0) <= b(0) xor Cin;
		bsingnal(1) <= b(1) xor Cin;
		bsingnal(2) <= b(2) xor Cin;
		bsingnal(3) <= b(3) xor Cin;
    --------------------------------

    

    full1: ENTITY work.fullAdder

    PORT MAP (

        A => a(0),

        B   => bsingnal(0),

        Cin => Cin,

        S   => s(0),

        Cout => signalCout(0));

    full2: ENTITY work.fullAdder

    PORT MAP (

        A => a(1),

        B   => bsingnal(1),

        Cin => signalCout(0),

        S   => s(1),

        Cout => signalCout(1));

    full3: ENTITY work.fullAdder

    PORT MAP (

        A => a(2),

        B   => bsingnal(2),

        Cin => signalCout(1),

        S   => s(2),

        Cout => signalCout(2));

    full4: ENTITY work.fullAdder

    PORT MAP (

        A => a(3),

        B   => bsingnal(3),

        Cin => signalCout(2),

        S   => s(3),

        Cout => Cout);
END ARCHITECTURE getLevel;