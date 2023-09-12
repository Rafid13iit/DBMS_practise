select r.sid, s.sname
from reserves r, sailors s, boats b
where r.sid = s.sid and r.bid = b.bid
minus
select r.sid, s.sname
from reserves r, sailors s, boats b
where r.sid = s.sid and r.bid = b.bid and 
      (r.sid, r.bid) not in (select r1.sid, r1.bid from reserves r1);
