create or replace procedure calculateCircleArea
(radius in number, area out number)
is
begin
    area := 3.1416 * radius * radius;
end calculateCircleArea;
/