-- TASK 6: Salary Analysis and Modification

ALTER TABLE Faculty ADD COLUMN salary DECIMAL(10,2);

SAVEPOINT S1;

UPDATE Faculty SET salary = 100000 WHERE faculty_id = 1;
UPDATE Faculty SET salary = 95000 WHERE faculty_id = 2;
UPDATE Faculty SET salary = 85000 WHERE faculty_id = 3;
UPDATE Faculty SET salary = 110000 WHERE faculty_id = 4;
UPDATE Faculty SET salary = 92000 WHERE faculty_id = 5;

-- Average salary of faculty
SELECT AVG(salary) AS avg_salary FROM Faculty;

-- Total credit points of all courses
SELECT SUM(credits) AS total_credits FROM Courses;