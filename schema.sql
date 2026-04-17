CREATE DATABASE credit_risk_project;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    employment_status VARCHAR(50),
    monthly_income DECIMAL(10,2)
);
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10,2),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (full_name, age, employment_status, monthly_income)
VALUES
('John Doe', 30, 'Employed', 15000),
('Jane Smith', 45, 'Self-employed', 22000),
('Mike Johnson', 22, 'Unemployed', 3000);

INSERT INTO loans (customer_id, loan_amount, interest_rate, loan_status)
VALUES
(1, 50000, 12.5, 'Approved'),
(2, 120000, 15.0, 'Defaulted'),
(3, 10000, 20.0, 'Rejected');

SELECT * FROM customers;

SELECT * FROM loans;

SELECT 
    c.full_name,
    c.monthly_income,
    l.loan_amount,
    l.loan_status
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id;
SHOW DATABASES;
SELECT * FROM customers;

