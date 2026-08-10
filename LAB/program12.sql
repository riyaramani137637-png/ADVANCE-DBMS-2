
SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT EID, ENAME, BASICSAL
        FROM EMPLOYEE
        WHERE DEPTNO = 20;

    v_eid EMPLOYEE.EID%TYPE;
    v_ename EMPLOYEE.ENAME%TYPE;
    v_basic EMPLOYEE.BASICSAL%TYPE;

BEGIN
    OPEN c1;

    IF c1%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is open.');
    END IF;

    LOOP
        FETCH c1 INTO v_eid, v_ename, v_basic;

        EXIT WHEN c1%NOTFOUND;

        UPDATE EMPLOYEE
        SET BASICSAL = BASICSAL + (BASICSAL * 5 / 100)
        WHERE EID = v_eid;

        DBMS_OUTPUT.PUT_LINE(
            'Salary increased for ' || v_ename ||
            ' from ' || v_basic ||
            ' to ' || (v_basic * 1.05)
        );
    END LOOP;

    IF c1%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'No employee found in Department 20.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            c1%ROWCOUNT || ' employee(s) updated.'
        );
    END IF;

    CLOSE c1;

    IF NOT c1%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is closed.');
    END IF;

    COMMIT;
END;
/
