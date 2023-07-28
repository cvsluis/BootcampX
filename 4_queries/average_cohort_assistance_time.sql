-- average duration of assistance requests for each cohort

SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assignment_time
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assignment_time;