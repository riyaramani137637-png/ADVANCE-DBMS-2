
SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1(dno NUMBER) IS
        SELECT ENAME, BASICSAL
        FROM EMPLOYEE
        WHERE DEPTNO = dno;

    total NUMBER := 0;

BEGIN
    FOR d IN (SELECT DISTINCT DEPTNO, DEPTNAME
              FROM EMPLOYEE)
    LOOP
        total := 0;

        DBMS_OUTPUT.PUT_LINE('Department: ' || d.DEPTNAME);

        FOR e IN c1(d.DEPTNO)
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                e.ENAME || '  ' || e.BASICSAL
            );

            total := total + e.BASICSAL;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE(
            'Total Basic Salary: ' || total
        );

        DBMS_OUTPUT.PUT_LINE(
            'Total Gross Salary: ' || total * 1.20
        );
    END LOOP;
END;
