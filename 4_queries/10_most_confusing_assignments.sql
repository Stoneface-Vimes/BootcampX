SELECT assignments.id, name, day, chapter, count(assistance_requests.assignment_id) as total_requests
FROM assignments, assistance_requests
where assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC