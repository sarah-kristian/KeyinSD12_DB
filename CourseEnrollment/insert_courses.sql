INSERT INTO courses (course_name, course_description, professor_id) 
VALUES 
	('Strategic Thinking and Analysis', 'An in-depth course on the development of strategic thinking skills, focusing on espionage techniques, data analysis, and decision-making under pressure.', (SELECT id FROM professors WHERE first_name = 'Thufir' AND last_name = 'Hawat')),
	('Warrior Poetics', 'A unique blend of combat training and the study of classical music and poetry, highlighting the role of art in cultivating a balanced warrior spirit.', (SELECT id FROM professors WHERE first_name = 'Gurney' AND last_name = 'Halleck')),
	('Advanced Swordsmanship', 'Comprehensive training in the use of various blades, emphasizing speed, agility, and precision, suited for both beginners and advanced practitioners.', (SELECT id FROM professors WHERE first_name = 'Duncan' AND last_name = 'Idaho')),
	('Medicine and Ethics in the Imperium', 'A course examining the ethical dilemmas faced by medical professionals, including the influence of politics and personal betrayal, within a futuristic setting.',(SELECT id FROM professors WHERE first_name = 'Dr.' AND last_name = 'Yueh')),
	('Physics 101', 'Introduction to fundamental principles of physics.', 4)
;