-- TASK 1: Create Tables

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    roll_number TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT UNIQUE NOT NULL,
    address TEXT DEFAULT 'Not Provided'
);

CREATE TABLE Faculty (
    faculty_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT UNIQUE NOT NULL,
    department TEXT CHECK (department IN ('Science', 'Arts', 'Commerce', 'Engineering'))
);

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    course_code TEXT UNIQUE NOT NULL,
    department TEXT CHECK (department IN ('Science', 'Arts', 'Commerce', 'Engineering')),
    credits INTEGER CHECK (credits > 0),
    faculty_id INTEGER NOT NULL
);

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    grade TEXT CHECK (grade IN ('A', 'B', 'C', 'D', 'F')) DEFAULT 'Not Graded'
);