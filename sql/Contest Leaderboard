select e.hacker_id,h.name,sum(max_score) total_score
from(
    select s.hacker_id,max(s.score) max_score,s.challenge_id 
    from submissions s
    where s.score<>0
    group by s.hacker_id,s.challenge_id
    order by s.hacker_id) e
join hackers h on e.hacker_id=h.hacker_id
group by e.hacker_id,h.name order by total_score desc,e.hacker_id;