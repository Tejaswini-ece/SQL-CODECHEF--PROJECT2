-- TASK 7: Rollback and Salary Update

ROLLBACK TO SAVEPOINT S1;

-- Reduce salary by 2000 for all faculty
UPDATE Faculty SET salary = salary - 2000;

-- Retrieve updated salaries
SELECT faculty_id, name, salary FROM Faculty;

-- New average salary
SELECT AVG(salary) AS avg_salary FROM Faculty;