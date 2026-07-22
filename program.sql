--program of principle amount
set serveroutput on
declare
	p number:='&p';
	r number:='&r';
	y number:='&y';
	si number;
begin
si:=p*r*y/100;
dbms_output.put_line('simple interest: '|| si);
end;
/
	