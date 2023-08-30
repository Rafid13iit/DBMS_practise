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
			
            DBMS_OUTPUT.PUT_LINE(
                RPAD(vr_zip.employee_id, 10) ||
                RPAD(vr_zip.last_name, 10)
            );

			END LOOP;
		END;
        /