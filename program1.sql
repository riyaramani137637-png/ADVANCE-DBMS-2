--print  the +,-,*,/
set severoutput on
declare 
             no1 number:='&no1';
	no2 number:='&no2';
	s number ;
	s1 number;
	m number;
	d number;
begin
	s:=no1+no2;
	dbms_output.put_line('sum of no1+non2= '||s);
	s1:=no1-no2;
	dbms_output.put_line('subtracation of no1-non2= '||s1);
	m:=no1*no2;
	dbms_output.put_line('multplication of no1 *non2 ='||m);
	d:=no1/no2;
	dbms_output.put_line('division of no1/non2='||d);
end;
/