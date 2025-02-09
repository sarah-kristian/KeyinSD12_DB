SELECT DISTINCT courses.course_name
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id;
