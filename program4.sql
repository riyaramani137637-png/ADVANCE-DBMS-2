--Write a PL/SQL block which accepts measurement in feet and displays it in cm, inch and meter
set serveroutput on
declare 
           
    feet   number;
    cm number    ;
    inch  number ;
    meter  number;

begin
    
    feet := &feet;
	 inch := feet * 12;
   	 cm := feet * 30.48;
   	 meter := feet * 0.3048;


    DBMS_OUTPUT.PUT_LINE('Measurement in Feet   : ' || feet);
    DBMS_OUTPUT.PUT_LINE('In Inches            : ' || inch);
    DBMS_OUTPUT.PUT_LINE('In Centimeters (cm)  : ' || cm);
    DBMS_OUTPUT.PUT_LINE('In Meters (m)        : ' || meter);
END;
/