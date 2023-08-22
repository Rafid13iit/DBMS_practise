create or replace function calculateCircleAreaFunction
(radius in number) return number is
area number := 0;
begin
    area := 3.1416 * radius * radius;
    return area;
end calculateCircleAreaFunction;
/