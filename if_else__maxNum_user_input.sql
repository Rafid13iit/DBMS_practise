DECLARE
	v_num1 NUMBER;
	v_num2 NUMBER;
	v_num3 NUMBER;
BEGIN
	v_num1 := &v_num1;
	v_num2 := &v_num2;
	v_num3 := &v_num3;

	IF v_num1 > v_num2
	THEN
		IF v_num1 > v_num3
		THEN
			DBMS_OUTPUT.PUT_LINE('Big number = '||v_num1);
		ELSE
			DBMS_OUTPUT.PUT_LINE('Big number = '||v_num3);
		END IF;
	ELSE
		IF v_num2 > v_num3
		THEN
			DBMS_OUTPUT.PUT_LINE('Big number = '||v_num2);
		ELSE
			DBMS_OUTPUT.PUT_LINE('Big number = '||v_num3);
		END IF;
	END IF;
END;
/