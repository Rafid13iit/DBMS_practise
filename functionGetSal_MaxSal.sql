DECLARE
	v_num1 NUMBER;
	v_num2 NUMBER;
	v_num3 NUMBER;
BEGIN
	v_num1 := get_sal(100);
	v_num2 := get_sal(101);
	v_num3 := get_sal(102);

	IF v_num1 > v_num2 AND v_num1 > v_num3 THEN
		DBMS_OUTPUT.PUT_LINE('Max Sal = '||v_num1);
	END IF;

	IF v_num2 > v_num1 AND v_num2 > v_num3 THEN
		DBMS_OUTPUT.PUT_LINE('Max Sal = '||v_num2);
	END IF;

	IF v_num3 > v_num1 AND v_num3 > v_num2 THEN
		DBMS_OUTPUT.PUT_LINE('Max Sal = '||v_num3);
	END IF;
END;
/