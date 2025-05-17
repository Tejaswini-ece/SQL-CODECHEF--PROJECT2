-- TASK 3A: Fetch all distinct departments from Faculty
SELECT DISTINCT department FROM Faculty;

-- TASK 3B: Get enrollments where students received grade 'C'
SELECT * FROM Enrollments WHERE grade = 'C';

-- TASK 3C: Find the 2 most recent enrollments
SELECT * FROM Enrollments ORDER BY enrollment_date DESC LIMIT 2;