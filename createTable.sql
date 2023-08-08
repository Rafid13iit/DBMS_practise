create table branch (
    branch_name varchar2(30),
    branch_city varchar2(30),
    assets number,
    constraint branch_pk primary key (branch_name)
);
create table customer (
    customer_name varchar2(30),
    customer_street varchar2(30),
    customer_city varchar2(30),
    constraint customer_pk primary key (customer_name)
);
create table loan (
    loan_number varchar2(30),
    branch_name varchar2(30),
    amount number,
    constraint loan_pk primary key (loan_number),
    constraint loan_fk foreign key (branch_name) references branch (branch_name)
);
create table account (
    account_number varchar2(30),
    branch_name varchar2(30),
    balance number,
    constraint account_pk primary key (account_number),
    constraint account_fk foreign key (branch_name) references branch (branch_name)
);
create table depositor (
    customer_name varchar2(30),
    account_number varchar2(30),
    constraint depositor_pk primary key (customer_name, account_number),
    constraint depositor_fk foreign key (customer_name) references customer(customer_name), 
    constraint depositor_fk1 foreign key (account_number) references account(account_number)
);
create table borrower (
    customer_name varchar2(30),
    loan_number varchar2(30),
    constraint borrower_pk primary key (customer_name, loan_number),
    constraint borrower_fk foreign key (customer_name) references customer(customer_name),
    constraint borrower_fk1 foreign key (loan_number) references loan(loan_number)
);
