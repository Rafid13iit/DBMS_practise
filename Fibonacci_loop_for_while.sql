DECLARE
    v_n1 NUMBER := 0;
    v_n2 NUMBER := 1;
    v_next NUMBER;

    v_limit NUMBER := 10;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fibonacci series using LOOP:');
    DBMS_OUTPUT.PUT_LINE(v_n1);
    DBMS_OUTPUT.PUT_LINE(v_n2);

    LOOP
        v_next := v_n1 + v_n2;
        DBMS_OUTPUT.PUT_LINE(v_next);
        v_n1 := v_n2;
        v_n2 := v_next;
        EXIT WHEN v_next > v_limit;
    END LOOP;



    v_n1 := 0;
    v_n2 := 1;
    v_next := 0;
    DBMS_OUTPUT.PUT_LINE('Fibonacci series using FOR:');
    DBMS_OUTPUT.PUT_LINE(v_n1);
    DBMS_OUTPUT.PUT_LINE(v_n2);

    FOR i IN 3..v_limit LOOP
        v_next := v_n1 + v_n2;
        DBMS_OUTPUT.PUT_LINE(v_next);
        v_n1 := v_n2;
        v_n2 := v_next;
        IF v_next > v_limit THEN 
        EXIT;
        END IF;
    END LOOP;



    v_n1 := 0;
    v_n2 := 1;
    v_next := 0;
    DBMS_OUTPUT.PUT_LINE('Fibonacci series using WHILE:');
    DBMS_OUTPUT.PUT_LINE(v_n1);
    DBMS_OUTPUT.PUT_LINE(v_n2);

    WHILE v_next <= v_limit LOOP
        v_next := v_n1 + v_n2;
        DBMS_OUTPUT.PUT_LINE(v_next);
        v_n1 := v_n2;
        v_n2 := v_next;
    END LOOP;
END;
/



