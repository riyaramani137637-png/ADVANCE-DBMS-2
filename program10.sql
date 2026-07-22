set serveroutput on
declare 
 	sr number (22):=&srno;
begin
 delete  from  bca where srno=sr;
commit;
dbms_output.put_line('delete the data');
end;
/