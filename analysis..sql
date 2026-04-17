-- =========================================
-- Credit Risk Analysis (Final Section)
-- =========================================

-- -----------------------------------------
-- High-Risk Loans (Defaulted)
-- -----------------------------------------
SELECT customer_id, loan_amount, interest_rate
FROM loans
WHERE loan_status = 'Defaulted'
ORDER BY loan_amount DESC;

-- -----------------------------------------
-- Risk by Interest Rate
-- -----------------------------------------
SELECT 
    interest_rate,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Defaulted' THEN 1 ELSE 0 END) AS defaults
FROM loans
GROUP BY interest_rate;

-- -----------------------------------------
-- Customer Loan Overview
-- -----------------------------------------
SELECT 
    c.full_name,
    c.monthly_income,
    l.loan_amount,
    l.loan_status
FROM customers c
JOIN loans l 
    ON c.customer_id = l.customer_id;

-- -----------------------------------------
-- Income vs Risk
-- -----------------------------------------
SELECT 
    c.monthly_income,
    AVG(l.loan_amount) AS avg_loan,
    SUM(CASE WHEN l.loan_status = 'Defaulted' THEN 1 ELSE 0 END) AS defaults
FROM customers c
JOIN loans l 
    ON c.customer_id = l.customer_id
GROUP BY c.monthly_income;

-- -----------------------------------------
-- Customer Default Rate
-- -----------------------------------------
SELECT 
    c.full_name,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN l.loan_status = 'Defaulted' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS default_rate
FROM customers c
JOIN loans l 
    ON c.customer_id = l.customer_id
GROUP BY c.full_name;

-- -----------------------------------------
-- (BONUS) Employment Risk Analysis
-- -----------------------------------------
SELECT 
    c.employment_status,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN l.loan_status = 'Defaulted' THEN 1 ELSE 0 END) AS defaults
FROM customers c
JOIN loans l 
    ON c.customer_id = l.customer_id
GROUP BY c.employment_status;