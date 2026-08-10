set serveroutput on

declare

cursor c1 is select id,name ,city from customer order by name ;

i customer.id%TYPE;
n customer.name%TYPE;
c customer.city%TYPE;

begin

open c1;

loop

        fetch c1 into i,n,c;

       exit when c1%NOTFOUND;

	dbms_output.put_line('id:'|| i);
	dbms_output.put_line('name:'|| n);
	dbms_output.put_line('city:'|| c);
	dbms_output.put_line('------------');

end loop;

close c1;
end;
/
