# 📊 Credit Risk Analysis using SQL

## 📌 Project Overview

This project analyzes customer and loan data to assess credit risk using SQL.
The objective is to identify patterns in loan defaults and understand the key factors that contribute to high-risk lending.

---

## 🧱 Database Structure

### Customers Table

* `customer_id` – Unique identifier
* `full_name` – Customer name
* `age` – Customer age
* `employment_status` – Employment type (Employed, Self-employed, Unemployed)
* `monthly_income` – Monthly income

### Loans Table

* `loan_id` – Unique loan identifier
* `customer_id` – Foreign key linking to customers
* `loan_amount` – Loan amount issued
* `interest_rate` – Interest rate applied
* `loan_status` – Loan outcome (Approved, Defaulted, Rejected)

---

## 📊 Key Analysis Performed

* Total number of loans issued
* Average loan amount
* Loan status distribution
* Default rate calculation
* High-risk loan identification
* Risk analysis by interest rate
* Customer-level default rate
* Income-based risk segmentation
* Employment-based risk analysis

---

## 🧠 Key Insights

* Higher loan amounts tend to be associated with increased default risk
* Customers with lower monthly income are more likely to default
* Unemployed customers show higher credit risk
* Certain customers repeatedly default, indicating high-risk behavior
* Interest rates reflect underlying borrower risk

---

## 🛠️ Tools & Technologies

* SQL (MySQL)
* MySQL Workbench

---

## 🚀 How to Run the Project

1. Run `schema.sql` to create the database and tables
2. Run `analysis.sql` to execute the analysis queries

---

## 📁 Project Structure

credit-risk-sql-project/
│
├── schema.sql
├── analysis.sql
├── README.md

---

## 📈 Future Improvements

* Develop a credit scoring model
* Build an interactive dashboard using Power BI
* Include additional customer attributes (e.g., credit history, loan duration)

---

## 💡 Author

This project was developed as part of a data analytics learning journey, focusing on SQL and real-world credit risk analysis.

---


 
