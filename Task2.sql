CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Insert records, some with NULL email or phone
INSERT INTO employees (name, department, salary, email, phone) VALUES
('Aarav Singh', 'Finance', 55000.00, 'aarav.singh@company.com', '9876543210'),
('Meera Joshi', 'HR', 50000.00, NULL, '9123456789'),
('Ravi Patel', 'IT', 62000.00, 'ravi.patel@company.com', NULL),
('Kavya Sharma', 'Marketing', 48000.00, NULL, NULL);

SELECT * FROM employees 
WHERE email IS NULL OR phone IS NULL;

UPDATE employees 
SET email = 'not_provided@company.com' 
WHERE email IS NULL;

UPDATE employees 
SET phone = '0000000000' 
WHERE phone IS NULL;

-- Delete employee with very low salary (invalid entry)
DELETE FROM employees 
WHERE salary < 20000;

-- Delete records where both email and phone are missing (invalid)
DELETE FROM employees 
WHERE email = 'not_provided@company.com' AND phone = '0000000000';

select * from employees;

