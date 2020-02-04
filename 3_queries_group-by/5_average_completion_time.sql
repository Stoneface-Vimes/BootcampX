SELECT students.name as name, avg(assignment_submissions.duration)
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC