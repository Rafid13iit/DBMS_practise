DECLARE
			CURSOR c_zip IS
			SELECT *
			FROM employees;
			vr_zip c_zip%ROWTYPE;
		BEGIN
			OPEN c_zip;
			LOOP
			FETCH c_zip INTO vr_zip;
			EXIT WHEN c_zip%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE(vr_zip.last_name || '''s employee id is ' || vr_zip.employee_id);
			END LOOP;
		END;
        /