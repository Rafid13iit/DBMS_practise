select concat('Hello', ' I am Rafid') "CONCAT", substr('Hello I am Rafid', 7, 10) "SUBSTR", length('Hello I am Rafid') "LENGTH", instr('Hello I am Rafid', 'R') "INSTR", replace('Hello I am Rafid', 'a', 'bc') "REPLACE", trim('I' from 'Hello I am Rafid') "TRIM" from dual;