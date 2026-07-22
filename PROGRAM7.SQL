DECLARE
    v_rollno RESULT.RollNo%TYPE := &RollNo;
    v_total  NUMBER;
    v_per    NUMBER(5,2);
    v_grade  VARCHAR2(2);
BEGIN
   
    SELECT (Sub1 + Sub2 + Sub3 + Sub4 + Sub5),
           (Sub1 + Sub2 + Sub3 + Sub4 + Sub5)/5
    INTO v_total, v_per
    FROM RESULT
    WHERE RollNo = v_rollno;

    -- Determine Grade
    IF v_per >= 90 THEN
        v_grade := 'A';
    ELSIF v_per >= 75 THEN
        v_grade := 'B';
    ELSIF v_per >= 60 THEN
        v_grade := 'C';
    ELSIF v_per >= 40 THEN
        v_grade := 'D';
    ELSE
        v_grade := 'F';
    END IF;

    -- Update the table
    UPDATE RESULT
    SET Total = v_total,
        Per = v_per,
        Grade = v_grade
    WHERE RollNo = v_rollno;

    COMMIT;

   
    DBMS_OUTPUT.PUT_LINE('Total      : ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Percentage : ' || v_per);
    DBMS_OUTPUT.PUT_LINE('Grade      : ' || v_grade);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Roll Number not found.');
END;
/
