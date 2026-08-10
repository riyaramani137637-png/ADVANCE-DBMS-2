
SET SERVEROUTPUT ON;

BEGIN
    UPDATE EMPLOYEE
    SET BASICSAL = BASICSAL + 1000
    WHERE DEPTNO = 20;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            SQL%ROWCOUNT || ' employee salary updated.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'No employee found in department 20.'
        );
    END IF;

    COMMIT;
END;
/

