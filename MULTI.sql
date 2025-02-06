CREATE OR REPLACE FUNCTION multiply(a NUMBER, b NUMBER) 
RETURN NUMBER 
IS
    result NUMBER;
BEGIN
    result := a * b;
    RETURN result;
END multiply;
/
DECLARE
multi number;
BEGIN
multi:=multiply(5,4);
dbms_output.put_line('multiplication :'||multi);
end;
/

