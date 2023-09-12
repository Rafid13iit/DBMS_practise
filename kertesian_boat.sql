select sailors.sname
from sailors
where sailors.sid in (
    select sid from reserves
    minus
    select sid from (
        select sid, bid 
        from (select sid from reserves), boats
        minus
        select sid, bid from reserves)
);
