select f1.x,f1.y
from
    (
        select x,y,row_number() over(order by x asc) r
        from functions
    ) f1
JOIN
    (
        select x,y,row_number() over(order by x asc) r
        from functions
    ) f2
on f1.r<f2.r
where f1.x=f2.y and f1.y=f2.x;