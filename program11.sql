SET SERVEROUTPUT ON;

DECLARE
    v_count NUMBER;
BEGIN
    UPDATE employee
    SET basicsal = basicsal + (basicsal * 10 / 100)
    WHERE deptno = 10;

    v_count := SQL%ROWCOUNT;

    IF v_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_count || ' employee(s) salary increased by 10%.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employee found in department 10.');
    END IF;
END;
/