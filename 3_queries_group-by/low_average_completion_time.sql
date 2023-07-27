-- students who's average assignment completion time is less than average

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE end_date IS NULL 
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) <= AVG(assignments.duration)
ORDER BY average_assignment_duration;