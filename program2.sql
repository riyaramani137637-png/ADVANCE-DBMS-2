--Write a PL/SQL block to calculate the squareand cube of the given number.

set serveroutput on
declare 
	num number := &num;
	sq number;
	cu number;
begin 
	sq:= num*num;
	cu:=num*num*num;
	dbms_output.put_line('number : '|| num);
	dbms_output.put_line('square: '|| sq);
	dbms_output.put_line('cube: '|| cu);	
end;
/