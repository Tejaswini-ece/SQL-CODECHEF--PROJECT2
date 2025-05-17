-- TASK 4A: Increase credits of all Science courses by 1
UPDATE Courses SET credits = credits + 1 WHERE department = 'Science';
SELECT course_name, department, credits FROM Courses WHERE department = 'Science' LIMIT 1;

-- TASK 4B: Add a scholarship column to Students
ALTER TABLE Students ADD COLUMN scholarship TEXT DEFAULT 'None';
SELECT student_id, name, scholarship FROM Students ORDER BY student_id ASC LIMIT 1;

-- TASK 4C: Update address "Not Provided" to "Unknown"
UPDATE Students SET address = 'Unknown' WHERE address = 'Not Provided';
SELECT student_id, name, address FROM Students WHERE address = 'Unknown';

-- TASK 4D: Add a status column to Enrollments
ALTER TABLE Enrollments ADD COLUMN status TEXT DEFAULT 'Active';
SELECT enrollment_id, student_id, course_id, status FROM Enrollments ORDER BY enrollment_id ASC LIMIT 1;

-- TASK 4E: Change department of "Computer Science" to "Technology"
UPDATE Courses SET department = 'Technology' WHERE course_name = 'Computer Science';
SELECT course_id, course_name, department FROM Courses WHERE course_name = 'Computer Science';