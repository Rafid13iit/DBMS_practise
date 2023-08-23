DECLARE
    v_max_salary NUMBER;
    v_min_salary NUMBER;
    v_max_employee_name VARCHAR(100);
    v_min_employee_name VARCHAR(100);
BEGIN
    
    SELECT MAX(salary), MIN(salary)
    INTO v_max_salary, v_min_salary
    FROM employees;

   
    SELECT last_name
    INTO v_max_employee_name
    FROM employees
    WHERE salary = v_max_salary;

   
    SELECT last_name
    INTO v_min_employee_name
    FROM employees
    WHERE salary = v_min_salary;

   
    DBMS_OUTPUT.PUT_LINE('Employee with maximum salary: ' || v_max_employee_name ||'''s Salary is '|| v_max_salary);
    DBMS_OUTPUT.PUT_LINE('Employee with minimum salary: ' || v_min_employee_name ||'''s Salary is '|| v_min_salary);
END;
/
