select h_id,h_name,cnt
from
    (select *, count(cnt) over(partition by cnt) as rep_cnt, max(cnt) over() as max_cnt
     from 
        (select challenges.hacker_id as h_id, hackers.name as h_name, count(challenge_id) as cnt
         from challenges join hackers on hackers.hacker_id = challenges.hacker_id
         group by h_id,h_name
        ) subq
     order by cnt desc, h_id
     ) subquery
where rep_cnt = 1 or cnt = max_cnt;