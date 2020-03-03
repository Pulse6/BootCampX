SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests;
-- JOIN cohorts ON cohorts.id = cohort_id
-- JOIN assistance_requests ON students.id = student_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time DESC
-- LIMIT 1;