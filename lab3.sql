CREATE DATABASE lab3;

use lab3;
-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Create Courses Table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    credit_hour INT
);

-- Create Enrollment Table
CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    course_id INT,
    student_id INT,
    FOREIGN KEY (course_id) REFERENCES courses (course_id),
    FOREIGN KEY (student_id) REFERENCES Students (student_id)
);

-- Insert Data into Students
INSERT INTO
    Students (
        student_id,
        name,
        age,
        email,
        phone_number
    )
VALUES (
        1,
        'Alice Smith',
        20,
        'alice@example.com',
        '555-0101'
    ),
    (
        2,
        'Bob Johnson',
        22,
        'bob@example.com',
        '555-0102'
    ),
    (
        3,
        'Charlie Brown',
        19,
        'charlie@example.com',
        '555-0103'
    ),
    (
        4,
        'Diana Prince',
        21,
        'diana@example.com',
        '555-0104'
    ),
    (
        5,
        'Evan Wright',
        23,
        'evan@example.com',
        '555-0105'
    );

-- Insert Data into Courses
INSERT INTO
    courses (course_id, name, credit_hour)
VALUES (
        101,
        'Introduction to Computer Science',
        3
    ),
    (102, 'Data Structures', 4),
    (
        103,
        'Database Management Systems',
        3
    ),
    (104, 'Web Development', 3),
    (
        105,
        'Artificial Intelligence',
        4
    );

-- Insert Data into Enrollment
INSERT INTO
    enrollment (
        enrollment_id,
        course_id,
        student_id
    )
VALUES (1001, 101, 1),
    (1002, 103, 1),
    (1003, 102, 2),
    (1004, 104, 2),
    (1005, 101, 3),
    (1006, 105, 4),
    (1007, 103, 5),
    (1008, 105, 5),
    (1009, 102, 1);

-- Question 1
SELECT * FROM Students;

-- Question 2
SELECT name, email FROM Students;

-- Question 3
SELECT * FROM Students WHERE age > 20;

-- Question 4
SELECT * FROM Students WHERE name LIKE 'A%';

-- Question 5
SELECT * FROM Courses WHERE name LIKE '%Science%';

-- Question 6
SELECT * FROM Students ORDER BY age DESC;

-- Question 7
SELECT * from Students WHERE phone_number = '555-0103';

-- Part 1: Alter
-- Question 1
ALTER TABLE Students ADD COLUMN address VARCHAR(255);

-- Question 2
ALTER TABLE Students ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- Question 3
ALTER TABLE Students MODIFY phone_number VARCHAR(50);

DESCRIBE Students;

SELECT @@version;
-- Question 4
ALTER TABLE Courses RENAME COLUMN 'name' to 'course_name';