declare
    p_phone_no varchar2(20);
begin
    p_phone_no := '8006330575';
    
    format_phone(p_phone_no);
    
    dbms_output.put_line('After the call: ' || p_phone_no);
end;
/