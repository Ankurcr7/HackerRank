select sub.submission_date, sub.num, sub.id, h.name from
(
    select s.submission_date, 
    (
        select count(distinct(s1.hacker_id)) 
        from Submissions s1 
        where 
        s1.submission_date = s.submission_date and 
        (
            select count(distinct(s2.submission_date)) 
            from Submissions s2 
            where s2.submission_date < s.submission_date and s2.hacker_id = s1.hacker_id
        ) = datediff(s.submission_date, (select min(s3.submission_date) from Submissions s3) )
    )as num,
    (
        select s4.hacker_id
        from Submissions s4 
        where s4.submission_date = s.submission_date 
        group by s4.hacker_id 
        order by count(*) desc, s4.hacker_id
        limit 1
    ) as id
    from 
    (
        select distinct(s5.submission_date) 
        from Submissions s5
    ) s
) sub, Hackers h
where h.hacker_id = sub.id
order by sub.submission_date;