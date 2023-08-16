create or replace procedure annual_salary
(p_id in employees.employee_id%type, 
v_name out employees.last_name%type, 
v_annual_sal out number)
is
begin
    select last_name , (12*salary+nvl(12*commission_pct*salary, 0)) into v_name, v_annual_sal 
    from employees
    where employee_id = p_id;
end annual_salary;
/