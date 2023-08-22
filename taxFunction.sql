create or replace function tax
(p_id in employees.employee_id%type) return employees.salary%type is
tax_value employees.salary%type := 0;
begin
select ((12*salary+nvl(12*commission_pct*salary, 0)) * .05)
into tax_value
from employees
where employee_id = p_id;
return tax_value;
end tax;
/


