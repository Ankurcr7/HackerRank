select s.contest_id,hacker_id,name,c.ct,c.tas,c.ctv,c.uv from 
(select * from 
(select contest_id, sum(total_submissions) as ct,sum(total_accepted_submissions)as tas
from colleges inner join challenges using (college_id)
inner join submission_stats using (challenge_id)
group by contest_id) as a
left join 
(select contest_id, sum(total_views) as ctv,sum(total_unique_views) as uv
from colleges inner join challenges using (college_id)
inner join view_stats using (challenge_id)
group by contest_id) as b
using (contest_id)
) as c
inner join contests s using (contest_id)
order by c.contest_id;