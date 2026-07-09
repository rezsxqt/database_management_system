REPAIR TABLE mysql.global_priv;

create user 'khan' @'localhost' IDENTIFIED BY 'khansir123';

use w3schools;

GRANT SELECT on employees TO 'khan' @'localhost';

SELECT user ();

INSERT INTO
    `employees` (
        `EmployeeID`,
        `LastName`,
        `FirstName`,
        `BirthDate`,
        `Photo`,
        `Notes`
    )
VALUES (
        1,
        'Davolio',
        'Nancy',
        '1968-12-08',
        'EmpID1.pic',
        'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'
    );

SELECT user ();

SELECT * from employees;

CREATE USER 'nigu'@ 'localhost';

use lab3;

GRANT SELECT, UPDATE on students TO nigu;

select * from students;

UPDATE students set address = 'Dallas,Texas' WHERE age = 23;

FLUSH PRIVILEGES;

REVOKE UPDATE on lab3.students from 'nigu' @'localhost';

show GRANTS for 'nigu' @'localhost';

SELECT CURRENT_USER(), USER ();

SHOW GRANTS;

SELECT * FROM mysql.user;