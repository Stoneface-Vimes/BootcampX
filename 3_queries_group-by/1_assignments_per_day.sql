SELECT day, count(assignments.*) as total
FROM assignments
GROUP BY day
ORDER BY day;