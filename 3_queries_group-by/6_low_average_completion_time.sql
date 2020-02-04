SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;


-- SELECT students.name as name, avg(assignment_submissions.duration), avg(assignments.duration)
-- FROM students, assignment_submissions, assignments
-- WHERE students.id = assignment_submissions.student_id AND students.end_date IS NULL AND assignments.id = assignment_submissions.assignment_id
-- GROUP BY students.name
-- ORDER BY avg(assignment_submissions.duration) ASC