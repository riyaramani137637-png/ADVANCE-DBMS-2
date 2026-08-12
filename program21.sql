set serveroutput on
declare 
	n1 number:=&n1;
	n2 number:=&n2;
	a number;
begin
	a:=n1/n2;
	dbms_output.put_line('values 1:'||n1);
	dbms_output.put_line('values 2:'||n2);
	dbms_output.put_line('output:'||a);
exception
	WHEN ZERO_DIVIDE THEN
	dbms_output.put_line('you are trying to divide by zero');
	dbms_output.put_line('NO 2 MUST BE >0 SO REETER NO');
end;
/