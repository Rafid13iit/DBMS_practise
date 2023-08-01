select last_name, hire_date, trunc((sysdate - hire_date)/365, 0) "Joining Year", 
trunc(((sysdate - hire_date)/365 - trunc((sysdate - hire_date)/365, 0))*12, 0) "Month", 
round(((((sysdate - hire_date)/365 - trunc((sysdate - hire_date)/365, 0))*12) - trunc(((sysdate - hire_date)/365 - trunc((sysdate - hire_date)/365, 0))*12, 0))*30) "Date" 
from employees;