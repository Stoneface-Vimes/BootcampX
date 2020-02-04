SELECT day, count(assignments.*) as total
FROM assignments
GROUP BY day
HAVING count(assignments.*) > 10
ORDER BY day;