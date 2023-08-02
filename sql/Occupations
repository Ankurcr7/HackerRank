SELECT
    MAX(CASE Occupation WHEN 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE Occupation WHEN 'Professor' THEN Name END) AS Professor,
    MAX(CASE Occupation WHEN 'Singer' THEN Name END) AS Singer,
    MAX(CASE Occupation WHEN 'Actor' THEN Name END) AS Actor
FROM (
    SELECT 
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS N
    FROM OCCUPATIONS
) AS O
GROUP BY N;