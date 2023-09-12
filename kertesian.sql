drop table taken_tab;
drop table required_tab;

create table taken_tab (
    student varchar2(30),
    course varchar2(30)
);

create table required_tab (
    course varchar2(30)
);

insert into taken_tab values('Robert', 'Databases');
insert into taken_tab values('Robert', 'Programming Languages');
insert into taken_tab values('Susie', 'Databases');
insert into taken_tab values('Susie', 'Operating Systems');
insert into taken_tab values('Julie', 'Programming Languages');
insert into taken_tab values('Julie', 'Machine Learning');
insert into taken_tab values('Emilie', 'Operating Systems');

insert into required_tab values('Databases');
insert into required_tab values('Programming Languages');

-- all possible combinations
select student, course from (select student from taken_tab), required_tab;

-- taken_tab table data
select student, course from taken_tab;

-- non-eligible table
select student from (
    select student, course 
    from (select student from taken_tab), required_tab
    minus
    select student, course from taken_tab);

-- final table who took 2 courses
select student from taken_tab
minus
select student from (
    select student, course 
    from (select student from taken_tab), required_tab
    minus
    select student, course from taken_tab);