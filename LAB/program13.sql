set serveroutput on
declare
   cursor s1 is select *  from employee order by basicsal desc;
  d employee%rowtype;
begin
  open s1;
loop
fetch s1 into d;
exit when s1%NOTFOUND OR s1%ROWCOUNT > 3;

dbms_output.put_line('name : ' || d.ename||'deptno:'||d.deptno||'salary:'||d.basicsal);

end loop;
close s1;
end;
/