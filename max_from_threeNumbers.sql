DECLARE
  v_num1 NUMBER := &v_user_num1;
  v_num2 NUMBER := &v_user_num2;
  v_num3 NUMBER := &v_user_num3;
  v_num_temp NUMBER := 0; 
BEGIN
 
  IF v_num1 >= v_num2 AND v_num1 >= v_num3 THEN
    v_num_temp := v_num1;
  ELSIF v_num2 >= v_num1 AND v_num2 >= v_num3 THEN 
    v_num_temp := v_num2;
  ELSE
    v_num_temp := v_num3;
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('The maximum number is ' || v_num_temp); 
END;
/
