select last_name, employee_id, salary, (12*salary+nvl(12*commission_pct*salary, 0)) "Annual Salary", tax(100) "Tax" from employees where employee_id = 100;