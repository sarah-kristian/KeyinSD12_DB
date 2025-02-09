SELECT courses.course_name, professors.first_name || ' ' || professors.last_name AS full_name
FROM courses
INNER JOIN professors ON courses.professor_id = professors.id
