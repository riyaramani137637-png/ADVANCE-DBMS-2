set serveroutput on
declare
 r number;
begin
for r in(select ename ,deptno,basicsal from employee)
loop
dbms_output.put_line('name:'|| r.ename||'dep:'||r.deptno||'salary:'||r.basicsal);
end loop;
end;
/
