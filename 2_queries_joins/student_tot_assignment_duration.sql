SELECT SUM(duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE students.name IN ('Ibrahim Schimmel');