-- total number of assistance requests for a student

SELECT COUNT(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;