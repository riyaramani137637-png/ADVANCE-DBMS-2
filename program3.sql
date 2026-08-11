SET SERVEROUTPUT ON;
DECLARE
    p VARCHAR2(20);
    q NUMBER;
    r NUMBER;
    d NUMBER;
BEGIN
    p := '&Product_Name';
    q := &Quantity;
    r := &Price;
    d := &Discount;

    DBMS_OUTPUT.PUT_LINE('Product: ' || p);
    DBMS_OUTPUT.PUT_LINE('Discount Rs.: ' || (q*r*d)/100);
END;
/