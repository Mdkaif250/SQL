

CREATE OR REPLACE FUNCTION EVENODD (A NUMBER)

RETURN VARCHAR2

IS

BEGIN

IF MOD(A,2) = 0 then

RETURN 'even number';

ELSE

RETURN 'odd';

END IF;

END EVENODD;

/

DECLARE

CHECKR VARCHAR2(50);
 NUM NUMBER := 16; 

BEGIN

CHECKR:=EVENODD(NUM);

DBMS_OUTPUT.PUT_LINE( NUM||' is an '|| CHECKR);

END;

/