LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY upcount IS
PORT ( 
Clock, Resetn, Load : IN STD_LOGIC ;
D : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) 
) ;
END upcount ;

ARCHITECTURE Behavior OF upcount IS
SIGNAL Count : STD_LOGIC_VECTOR (3 DOWNTO 0) ;


BEGIN


	PROCESS ( Clock, Resetn, Load, D )
BEGIN
	IF Resetn = '0' THEN
		Count <= "0000" ;
	ELSIF (Clock'EVENT AND Clock = '1') THEN
		IF Load = '0' THEN
			Count <= Count + 1 ;
		ELSE
			Count <= D ;
		END IF ;
	END IF ;

	END PROCESS ;
		Q <= Count ;
END Behavior ;