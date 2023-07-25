-- total amount of time that a student has spent on all assignments

SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';