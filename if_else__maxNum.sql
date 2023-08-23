DECLARE
	v_num1 NUMBER := 5;
	v_num2 NUMBER := 3;
	v_num3 NUMBER := 9;
BEGIN
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