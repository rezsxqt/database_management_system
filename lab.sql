CREATE DATABASE lab1;

use lab1

create Table student (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age int,
    Contact BIGINT
);

INSERT INTO
    student
VALUES (
        241432,
        'Rijesh Maharjan',
        20,
        9877432341
    ),
    (
        241434,
        'Sameer Khan',
        19,
        9874351284
    ),
    (
        241426,
        'Pragun Dhungana',
        21,
        9864616382
    );

SELECT * from student;