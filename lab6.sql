CREATE ROLE 'manager';

GRANT SELECT, INSERT , UPDATE ON lab3.* TO 'manager' @'localhost';

GRANT 'manager' to 'nigu' @'localhost';

SELECT CURRENT_USER;

select @@version;

use lab3;

SELECT * FROM enrollment;

SHOW GRANTS;

CREATE ROLE 'admin_role';

CREATE ROLE 'employee_role';

GRANT ALL PRIVILEGES ON lab3.* TO 'admin_role';

GRANT SELECT ON lab3.* TO 'employee_role';

CREATE USER 'admin1' @'localhost' IDENTIFIED BY 'Admin';

CREATE USER 'manager1' @'localhost' IDENTIFIED BY 'Manager';

CREATE USER 'employee1' @'localhost' IDENTIFIED BY 'Employee';

GRANT 'admin_role' TO 'admin1' @'localhost';

GRANT 'manager' TO 'manager1' @'localhost';

GRANT 'employee_role' TO 'employee1' @'localhost';

SET DEFAULT ROLE 'admin_role' FOR 'admin1' @'localhost';

SET DEFAULT ROLE 'manager' FOR 'manager1' @'localhost';

SET DEFAULT ROLE 'employee_role' FOR 'employee1' @'localhost';