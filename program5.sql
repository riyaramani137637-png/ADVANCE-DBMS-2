--Write a PL/SQL block which converts temperature from Celsius to Fahrenheit
set serveroutput on
declare
        
        f number;
        c number:=&c;
begin
        f:=(c*(9/5))+32;
 dbms_output.put_line('celsius :'|| f);
end;
/