SELECT day, count(assignments) as number_of_assignments, SUM(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day ASC