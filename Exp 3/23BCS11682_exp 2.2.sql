--EXPERIMENT 03: Department Salary Champions Explorer (MEDIUM LEVEL)
CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM', 60000, 2),
(5, 'MAX', 90000, 1);

SELECT (SELECT dept_name FROM department d where d.id = e.department_id) AS DEPT_NAME, name, salary
FROM Employee e
WHERE salary IN (SELECT MAX(e2.salary) FROM employee e2 WHERE e2.department_id = e.department_id)
