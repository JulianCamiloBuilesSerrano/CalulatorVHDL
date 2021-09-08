LIBRARY IEEE;

USE ieee.std_logic_1164.all;

ENTITY fullAdder IS

    PORT(

        A   :   IN  STD_LOGIC;

        B   :   IN STD_LOGIC;

        Cin :   IN STD_LOGIC;

        S:  OUT STD_LOGIC;

        Cout    :   OUT STD_LOGIC);

END ENTITY fullAdder;

----------------------------------------

ARCHITECTURE functional OF fullAdder IS



BEGIN

    S       <=  ((NOT A)AND (NOT B) and (Cin)) OR 

                    ((NOT A)AND ( B) and (NOT Cin)) OR

                    (( A)AND (NOT B) and (NOT Cin)) OR

                    (( A)AND ( B) and (Cin));

    Cout    <=  ((NOT A)AND ( B) and (Cin))OR

                    (( A)AND (NOT B) and (Cin)) OR

                    (( A)AND ( B) and (NOT Cin))OR

                    ((A)AND ( B) and (Cin));

END ARCHITECTURE functional;