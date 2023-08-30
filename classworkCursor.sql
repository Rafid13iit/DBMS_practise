drop table unformatted_tab;
drop table formatted_tab;

create table unformatted_tab
(
    phn_num1 varchar2(20)
);

insert into unformatted_tab values ('+998-999-882');
insert into unformatted_tab values ('+998-998-881');
insert into unformatted_tab values ('+998-997-880');

create table formatted_tab
(
    phn_num2 varchar2(20)
);

DECLARE
    CURSOR c_zip IS
        SELECT *
        FROM unformatted_tab;
    vr_zip unformatted_tab%ROWTYPE;
    v_zip formatted_tab.phn_num2%TYPE;

BEGIN
    OPEN c_zip;
    LOOP
        FETCH c_zip INTO vr_zip;
        EXIT WHEN c_zip%NOTFOUND;

        v_zip := vr_zip.phn_num1;

        v_zip := (substr(v_zip, 2, 3) || substr(v_zip, 6, 3) || substr(v_zip, 10, 3) );

        INSERT INTO formatted_tab VALUES (v_zip);

        DBMS_OUTPUT.PUT_LINE('Inserted ' || v_zip || ' successfully in formatted_tab');
    END LOOP;
END;
/

select * from unformatted_tab;

select * from formatted_tab;
