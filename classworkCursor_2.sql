drop table new_tab;

create table new_tab
(
    new_last_name varchar2(30),
    new_employee_id varchar2(30),
    new_department_name varchar2(30)
);

DECLARE
    CURSOR c_zip IS
        SELECT *
        FROM employees;

    vr_zip employees%ROWTYPE;
    v1_zip new_tab.new_last_name%TYPE;
    v2_zip new_tab.new_employee_id%TYPE;
    v3_zip new_tab.new_department_name%TYPE;
    v_department_name departments.department_name%TYPE;

BEGIN
    OPEN c_zip;
    LOOP
        FETCH c_zip INTO vr_zip;
        EXIT WHEN c_zip%NOTFOUND;

        SELECT department_name INTO v_department_name
        FROM departments
    	WHERE vr_zip.department_id = department_id;

        v1_zip := vr_zip.last_name;
        v2_zip := vr_zip.employee_id;
        v3_zip := v_department_name;

        INSERT INTO new_tab VALUES (v1_zip, v2_zip, v3_zip);

        DBMS_OUTPUT.PUT_LINE('Insertion completed successfully in new_tab');

    END LOOP;
END;
/

select * from new_tab;
