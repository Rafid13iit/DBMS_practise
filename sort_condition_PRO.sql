SELECT
    last_name,
    department_id,
    (12*salary+nvl(12*commission_pct*salary, 0)) "Annual Salary" 
FROM
    employees 
WHERE
    department_id between 10 and 100 
ORDER BY
    department_id,
    (12*salary+nvl(12*commission_pct*salary, 0)) desc;