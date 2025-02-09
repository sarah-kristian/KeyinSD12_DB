INSERT INTO students (first_name, last_name, email, enrollment_date)
VALUES 
	('Paul', 'Atreides', 'paul.atreides@email.com', '10191-06-19'),
	('Alia', 'Atreides', 'alia.atreides@email.com', '10191-06-20'),
	('Feyd-Rautha', 'Harkonnen', 'feyd.harkonnen@email.com', '10191-06-21'),
	('Chani', 'Kynes', 'chani.kynes@email.com', '10191-06-22'),
	('Stilgar', 'Ben Fifrawi', 'stilgar.fifrawi@email.com', '10191-06-23')
;

INSERT INTO professors (first_name, last_name, department)
VALUES 
	('Thufir', 'Hawat', 'Strategy'),
	('Gurney', 'Halleck', 'Music'),
	('Duncan', 'Idaho', 'Combat'),
	('Dr.', 'Yueh', 'Medicine')
;

INSERT INTO courses (course_name, course_description, professor_id) 
VALUES 
	('Strategic Thinking and Analysis', 'An in-depth course on the development of strategic thinking skills, focusing on espionage techniques, data analysis, and decision-making under pressure.', (SELECT id FROM professors WHERE first_name = 'Thufir' AND last_name = 'Hawat')),
	('Warrior Poetics', 'A unique blend of combat training and the study of classical music and poetry, highlighting the role of art in cultivating a balanced warrior spirit.', (SELECT id FROM professors WHERE first_name = 'Gurney' AND last_name = 'Halleck')),
	('Advanced Swordsmanship', 'Comprehensive training in the use of various blades, emphasizing speed, agility, and precision, suited for both beginners and advanced practitioners.', (SELECT id FROM professors WHERE first_name = 'Duncan' AND last_name = 'Idaho')),
	('Medicine and Ethics in the Imperium', 'A course examining the ethical dilemmas faced by medical professionals, including the influence of politics and personal betrayal, within a futuristic setting.',(SELECT id FROM professors WHERE first_name = 'Dr.' AND last_name = 'Yueh')),
	('Physics 101', 'Introduction to fundamental principles of physics.', 4)
;

INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
	(1, 1, '10220-01-01'),
	(1, 2, '10220-01-01'),
	(1, 3, '10220-01-01'),
	(1, 4, '10220-01-01'),
	(1, 5, '10220-01-01'),
	(2, 1, '10220-01-01'),
	(3, 2, '10220-01-01'),
	(4, 3, '10220-01-01'),
	(5, 4, '10220-01-01'),
	(2, 5, '10220-01-01'),
	(5, 5, '10220-01-01'),
	(3, 4, '10220-01-01')
;