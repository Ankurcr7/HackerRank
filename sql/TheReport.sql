select case when Grades.grade < 8 then 'NULL' else students.name end ,Grades.grade,students.marks from students cross join Grades where marks between grades.min_mark and grades.max_mark order by Grades.Grade DESC , students.name ASC;