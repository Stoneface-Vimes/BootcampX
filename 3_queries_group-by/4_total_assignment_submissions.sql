SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC

-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
-- FROM cohorts, assignment_submissions, students
-- WHERE students.cohort_id = cohorts.id AND assignment_submissions.student_id = students.id
-- GROUP BY cohorts.name
-- ORDER BY count(assignment_submissions.*) DESC