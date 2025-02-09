SELECT first_name || ' ' || last_name AS full_name
FROM students
WHERE id IN (SELECT student_id FROM enrollments WHERE course_id = 5);