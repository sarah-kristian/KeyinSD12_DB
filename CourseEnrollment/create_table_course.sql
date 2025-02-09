CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    course_name TEXT,
    course_description TEXT,
	professor_id INTEGER,
    FOREIGN KEY (professor_id) REFERENCES professor(id)
);