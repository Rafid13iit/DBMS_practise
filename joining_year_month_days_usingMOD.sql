select last_name, hire_date, trunc((sysdate - hire_date)/365 - (mod((sysdate - hire_date),365)/365), 0) "Joining Year", 
trunc((mod((sysdate - hire_date),365)/30), 0) "Month", 
round(mod(mod((sysdate - hire_date),365),30)) "Day" from employees;