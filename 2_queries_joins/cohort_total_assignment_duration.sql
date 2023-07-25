-- total amount of time that all students from a specific 
-- cohort (example FEB12) have spent on all assignments

SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id 
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';