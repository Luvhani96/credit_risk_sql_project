SELECT * FROM customers;
SELECT * FROM loans;

SELECT COUNT(*) AS total_loans FROM loans;

SELECT AVG(loan_amount) AS avg_loan FROM loans;

SELECT loan_status, COUNT(*) 
FROM loans
GROUP BY loan_status;

SELECT
 COUNT(CASE WHEN loan_status = 'Defaulted' THEN 1 END) * 100.0 / COUNT(*) AS default_rate
 FROM loans;
 
 SELECT customer_id, loan_amount, interest_rate
FROM loans
WHERE loan_status = 'Defaulted'
ORDER BY loan_amount DESC;

SELECT 
    interest_rate,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Defaulted' THEN 1 ELSE 0 END) AS defaults
FROM loans
GROUP BY interest_rate;

SELECT * FROM customers;

SELECT 
    c.full_name,
    c.monthly_income,
    l.loan_amount,
    l.loan_status
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id;

SELECT 
    c.monthly_income,
    AVG(l.loan_amount) AS avg_loan,
    SUM(CASE WHEN l.loan_status = 'Defaulted' THEN 1 ELSE 0 END) AS defaults
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY c.monthly_income;

SELECT 
    c.full_name,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN l.loan_status = 'Defaulted' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS default_rate
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY c.full_name;







 
 
