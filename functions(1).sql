-- Function for Addition
CREATE OR REPLACE FUNCTION add_numbers (a NUMBER, b NUMBER) 
RETURN NUMBER 
IS
    result NUMBER;
BEGIN
    result := a + b;
    RETURN result;
END add_numbers;
/

-- Function for Subtraction
CREATE OR REPLACE FUNCTION subtract (a NUMBER, b NUMBER) 
RETURN NUMBER 
IS
    result NUMBER;
BEGIN
    result := a - b;
    RETURN result;
END subtract;
/

-- Function for Multiplication
CREATE OR REPLACE FUNCTION multiply (a NUMBER, b NUMBER) 
RETURN NUMBER 
IS
    result NUMBER;
BEGIN
    result := a * b;
    RETURN result;
END multiply;
/

-- Function for Division
CREATE OR REPLACE FUNCTION division (a NUMBER, b NUMBER) 
RETURN NUMBER 
IS
    result NUMBER;
BEGIN
        result := a / b;
    RETURN result;
END division;
/

-- Anonymous PL/SQL Block
DECLARE
    add_result NUMBER;
    sub_result NUMBER;
    mult_result NUMBER;
    div_result NUMBER;
BEGIN
    add_result := add_numbers(1, 2);
    sub_result := subtract(1, 2);
    mult_result := multiply(1, 2);
    div_result := division(1, 2);

    DBMS_OUTPUT.PUT_LINE('Adding: ' || add_result);
    DBMS_OUTPUT.PUT_LINE('Subtracting: ' || sub_result);
    DBMS_OUTPUT.PUT_LINE('Multiplying: ' || mult_result);
    DBMS_OUTPUT.PUT_LINE('Division: ' || div_result);
END;
/
