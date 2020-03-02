SELECT students.name AS student, ROUND(AVG(assignment_submissions.duration), 2) AS average_assignment_duration, ROUND(AVG(assignments.duration), 2) AS average_estimated_duration
FROM assignment_submissions
JOIN assignments ON assignments.id = assignment_id
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);