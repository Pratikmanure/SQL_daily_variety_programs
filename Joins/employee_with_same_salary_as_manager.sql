CREATE TABLE EmployeeSalary (
    id INT,
    name VARCHAR(50),
    salary INT,
    managerId INT
);

INSERT INTO EmployeeSalary VALUES
(1, 'Amit', 50000, 2),
(2, 'Rohit', 50000, NULL),
(3, 'Neha', 60000, 2);

--answer 

SELECT 
    e.name AS employee_name,
    m.name AS manager_name
FROM Employee e
LEFT JOIN Employee m
ON e.managerId = m.id;
