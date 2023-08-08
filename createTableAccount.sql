create table account (
    account_number varchar2(30),
    branch_name varchar2(30),
    balance number,
    constraint account_pk primary key (account_number),
    constraint account_fk foreign key (branch_name) references branch (branch_name)
);