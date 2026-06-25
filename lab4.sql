use lab3;

-- question no 5
ALTER TABLE students DROP COLUMN age;

--  question no 6
ALTER TABLE courses
ADD CONSTRAINT chk_credit_hour CHECK (credit_hour >= 1);

SELECT * from students;

-- question no 7
UPDATE students
SET
    phone_number = '555-9999'
WHERE
    student_id = 1;

-- question no 8

alter Table students add age int;

UPDATE students
SET
    age = 23,
    email = 'bob.j@newemail.com'
WHERE
    student_id = 2;

-- Question no 9
UPDATE courses
SET
    credit_hour = credit_hour + 1
WHERE
    credit_hour = 3;

select * from courses;

-- Question no 10
UPDATE students SET email = LOWER(email);

SELECT * FROM students;

-- Question no 11
UPDATE courses
SET
    credit_hour = 5
WHERE
    course_id = (
        SELECT course_id
        from courses
        WHERE
            name = 'Data Structures'
    )

-- Question no 12

DELETE FROM enrollment where student_id = 5;

DELETE FROM students where name = 'Evan Wright'

select * from students;

select * from enrollment;

-- Question number 13
DELETE FROM courses where credit_hour < 3;