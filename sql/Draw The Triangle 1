WITH RECURSIVE num_list AS (
 SELECT 1 AS num
 UNION ALL
 SELECT num + 1
 FROM num_list
 WHERE num < 20)
SELECT
 REPEAT('* ', num) AS pattern
FROM num_list
ORDER BY num DESC;