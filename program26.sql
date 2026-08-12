set serveroutput on
declare
	n char(22);
	p number(8);
	i number:=&id;
begin
select name,price into n,p from product where id=i;
dbms_output.put_line('product name:'|| n||'price:'||p);
exception
WHEN NO_DATA_FOUND THEN
dbms_output.put_line('product id:'||i||'not available in table');
end;
/