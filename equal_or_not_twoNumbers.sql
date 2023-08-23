DBMS_OUTPUT.PUT_LINE('Take the numbers');
	
DECLARE
  -- DBMS_OUTPUT.PUT_LINE('Take the numbers');
	v_num1 NUMBER := &v_user_num1;
	v_num2 NUMBER := &v_user_num2;
BEGIN
	-- if v_num1 is greater than v_num2 rearrange their
	-- values
	IF v_num1 != v_num2
	THEN
		DBMS_OUTPUT.PUT_LINE('These numbers are not equal');
	
	-- display the values of v_num1 and v_num2
    ELSE
		DBMS_OUTPUT.PUT_LINE('These numbers are  equal');
	END IF;
END;
/
