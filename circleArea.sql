declare
    v_radius number := 5; 
    v_area number;
begin
    v_area := 3.1416 * power(v_radius, 2);
    dbms_output.put_line('The area of the circle is: ' || v_area);
end;
/