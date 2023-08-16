declare
    radius number; 
    area number;
begin
    calculateCircleArea(5, area);
    dbms_output.put_line('The area of the circle is: ' || area);
end;
/