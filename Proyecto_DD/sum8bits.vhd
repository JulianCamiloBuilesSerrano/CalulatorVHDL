LIBRARY IEEE;

USE ieee.std_logic_1164.all;

ENTITY sum8bits IS



    PORT(

        a   :   IN  STD_LOGIC_VECTOR(7 DOWNTO 0);

        b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

        Cin:    IN STD_LOGIC;

        s   :   OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

        Cout    :   OUT STD_LOGIC);

        

END ENTITY sum8bits;

----------------------------------------

ARCHITECTURE getLevel OF sum8bits IS

    SIGNAL signalCout   :   STD_LOGIC_VECTOR(6 DOWNTO 0);
	 SIGNAL bsingnal		: 	 STD_LOGIC_VECTOR(7 DOWNTO 0);
    

BEGIN
		bsingnal(0) <= b(0) xor Cin;
		bsingnal(1) <= b(1) xor Cin;
		bsingnal(2) <= b(2) xor Cin;
		bsingnal(3) <= b(3) xor Cin;
		bsingnal(4) <= b(4) xor Cin;
		bsingnal(5) <= b(5) xor Cin;
		bsingnal(6) <= b(6) xor Cin;
		bsingnal(7) <= b(7) xor Cin;
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

        Cout => signalCout(3));
	
	
	full5: ENTITY work.fullAdder
    PORT MAP (

        A => a(4),

        B   => bsingnal(4),

        Cin => signalCout(3),

        S   => s(4),

        Cout => signalCout(4));
		 
	full6: ENTITY work.fullAdder
    PORT MAP (

        A => a(5),

        B   => bsingnal(5),

        Cin => signalCout(4),

        S   => s(5),

        Cout => signalCout(5));
		  
	full7: ENTITY work.fullAdder
    PORT MAP (

        A => a(6),

        B   => bsingnal(6),

        Cin => signalCout(5),

        S   => s(5),

        Cout => signalCout(6));
		  
		full8: ENTITY work.fullAdder
    PORT MAP (

        A => a(7),

        B   => bsingnal(7),

        Cin => signalCout(6),

        S   => s(7),

        Cout => Cout);
END ARCHITECTURE getLevel;