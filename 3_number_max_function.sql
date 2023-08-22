create or replace function maxFunction
(num1 in number, num2 in number, num2 in number) return number is
maximum number := 0;
begin
    maximum := max{(num1, num2, num3)};
    return maximum;
end maxFunction;
/