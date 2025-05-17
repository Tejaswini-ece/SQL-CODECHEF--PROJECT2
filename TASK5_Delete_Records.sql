-- TASK 5: Deleting Records

-- 1. Remove students with address 'Not Provided'
DELETE FROM Students WHERE address = 'Not Provided';
SELECT student_id, name, address FROM Students;

-- 2. Delete enrollments with grade 'B'
DELETE FROM Enrollments WHERE grade = 'B';
SELECT enrollment_id, student_id, course_id, grade FROM Enrollments;

-- 3. Delete courses with credits < 4
DELETE FROM Courses WHERE credits < 4;
SELECT * FROM Courses;

-- 4. Delete students with email domain 'email.com'
DELETE FROM Students WHERE email LIKE '%@email.com';
SELECT * FROM Students;