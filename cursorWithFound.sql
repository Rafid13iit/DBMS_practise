DECLARE
			CURSOR c_zip IS
			SELECT *
			FROM employees;
			vr_zip c_zip%ROWTYPE;
            v_department_name departments.department_name%TYPE;
            
		BEGIN

			OPEN c_zip;
			FETCH c_zip INTO vr_zip;
            
			WHILE c_zip%FOUND
			LOOP

				FETCH c_zip INTO vr_zip;

            	SELECT department_name INTO v_department_name
            	FROM departments
            	WHERE vr_zip.department_id = department_id;
				
				DBMS_OUTPUT.PUT_LINE(vr_zip.employee_id || '  ' || vr_zip.last_name || '''s department name is ' || v_department_name || ' and annual salary is ' || vr_zip.salary*12);
			
			END LOOP;
		END;
        /