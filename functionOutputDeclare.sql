declare
sal employees.salary%type;
begin
sal := get_sal(100);
dbms_output.put_line('The salary is ' || sal);
end;
/