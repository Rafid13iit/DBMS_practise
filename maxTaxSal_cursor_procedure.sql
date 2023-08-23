DECLARE
	v_max_annual_sal_tax NUMBER := NULL;
	v_min_annual_sal_tax NUMBER := NULL;

	v_name employees.last_name%type;
	v_annual_sal_tax number;

BEGIN	
	FOR emp_rec IN (SELECT last_name, salary, commission_pct FROM employees) LOOP
	    -- 5% tax
		v_annual_sal_tax := (12 * emp_rec.salary + NVL(12 * emp_rec.commission_pct * emp_rec.salary, 0)) * .05;

		-- Initialize max and min salary on the first iteration
		IF v_max_annual_sal_tax IS NULL OR v_annual_sal_tax > v_max_annual_sal_tax THEN
			v_max_annual_sal_tax := v_annual_sal_tax;
		END IF;

		IF v_min_annual_sal_tax IS NULL OR v_annual_sal_tax < v_min_annual_sal_tax THEN
			v_min_annual_sal_tax := v_annual_sal_tax;
		END IF;
	END LOOP;

	DBMS_OUTPUT.PUT_LINE('Max annual salary with tax: ' || v_max_annual_sal_tax);
	DBMS_OUTPUT.PUT_LINE('Min annual salary with tax: ' || v_min_annual_sal_tax);

END;
/
