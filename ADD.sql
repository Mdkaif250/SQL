CREATE OR REPLACE FUNCTION add_numbers (a NUMBER, b NUMBER) 
RETURN NUMBER 
IS
    result NUMBER;
BEGIN
    result := a + b;
    RETURN result;
END add_numbers;
/
DECLARE 
add number;
BEGIN
add:=add_numbers(1,2);
dbms_output.put_line('adding :'||add);
end ;
/