-- TASK 2: Insert data and retrieve last records

INSERT INTO Students (student_id, name, roll_number, email, phone, address) VALUES
(1, 'John Doe', '101', 'john.doe@email.com', '9876543210', '123 Main St'),
(2, 'Jane Smith', '102', 'jane.smith@email.com', '9823456789', '45 Elm St'),
(3, 'Alice Brown', '103', 'alice.b@email.com', '9988776655', '78 Pine Ave'),
(4, 'Bob Johnson', '104', 'bob.j@email.com', '9765432109', '90 Oak Lane'),
(5, 'Charlie Lee', '105', 'charlie.l@email.com', '9234567890', 'Not Provided'),
(6, 'David White', '106', 'david.w@email.com', '9678991234', '12 Maple St'),
(7, 'Emily Clark', '107', 'emily.c@email.com', '9345678901', 'Not Provided'),
(8, 'Frank Harris', '108', 'frank.h@email.com', '9763214785', '56 Birch Road'),
(9, 'Grace Kelly', '109', 'grace.k@email.com', '9456123870', '32 Cedar Ave'),
(10, 'Henry Adams', '110', 'henry.a@email.com', '9312465789', '22 Walnut Lane');

INSERT INTO Faculty (faculty_id, name, email, phone, department) VALUES
(1, 'Dr. Smith', 'smith@univ.com', '9876543211', 'Science'),
(2, 'Dr. Johnson', 'johnson@univ.com', '9823456781', 'Arts'),
(3, 'Dr. Williams', 'williams@univ.com', '9988776611', 'Commerce'),
(4, 'Dr. Brown', 'brown@univ.com', '9765432191', 'Engineering'),
(5, 'Dr. Davis', 'davis@univ.com', '9234567811', 'Science');

INSERT INTO Courses (course_id, course_name, course_code, department, credits, faculty_id) VALUES
(1, 'Mathematics', 'MATH101', 'Science', 4, 1),
(2, 'English Literature', 'ENG102', 'Arts', 3, 2),
(3, 'Economics', 'ECO103', 'Commerce', 4, 3),
(4, 'Computer Science', 'CS104', 'Engineering', 4, 4),
(5, 'Physics', 'PHY105', 'Science', 3, 5);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) VALUES
(1, 1, 1, '2024-01-15', 'A'),
(2, 2, 2, '2024-01-16', 'B'),
(3, 3, 3, '2024-01-17', 'A'),
(4, 4, 4, '2024-01-18', 'C'),
(5, 5, 5, '2024-01-19', 'B'),
(6, 6, 1, '2024-01-20', 'A'),
(7, 7, 2, '2024-01-21', 'C'),
(8, 8, 3, '2024-01-22', 'B'),
(9, 9, 4, '2024-01-23', 'A'),
(10, 10, 5, '2024-01-24', 'B');

SELECT * FROM Faculty ORDER BY faculty_id DESC LIMIT 1;
SELECT * FROM Courses ORDER BY course_id DESC LIMIT 1;
SELECT * FROM Enrollments ORDER BY enrollment_id DESC LIMIT 1;