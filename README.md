📊 Credit Risk Analysis using SQL
 Project Overview
This project focuses on analyzing customer and loan data to assess credit risk using SQL.
The goal is to identify patterns in loan defaults and understand which factors contribute to higher risk.

Database Structure
The project uses two main tables:
1. Customers Table
•	customer_id – Unique identifier for each customer
•	full_name – Customer name
•	monthly_income – Customer income

2. Loans Table
•	loan_id – Unique loan identifier
•	customer_id – Links to customers table
•	loan_amount – Amount issued
•	interest_rate – Interest charged
•	loan_status – (Approved, Defaulted, Rejected)

Key Analysis Performed
•	Total number of loans issued
•	Average loan amount
•	Loan status distribution
•	Default rate calculation
•	High-risk loan identification
•	Risk analysis by interest rate
•	Customer-level default rate
•	Income-based risk segmentation

Key Insights
•	Higher loan amounts tend to be associated with higher default rates
•	Customers with lower monthly income show higher likelihood of default
•	Certain customers repeatedly default, indicating high-risk profiles
•	Interest rates appear to reflect underlying risk levels

Tools & Technologies
•	MySQL Workbench

 How to Run the Project
1.	Clone or download this repository
2.	Open MySQL Workbench
3.	Run schema.sql to create the database and tables
4.	Run analysis.sql to perform the analysis

Project Structure
credit-risk-SQL-project/

schema. SQL # Database creation & data insertion

analysis. SQL # SQL queries for analysis

insights.md # Key findings and interpretations

README.md # Project documentation


 Future Improvements
•	Add credit scoring model
•	Integrate Power BI dashboard for visualization
•	Include additional customer attributes (e.g., employment status, credit history)

Conclusion
This project was created as part of a data analytics learning journey, focusing on building practical SQL skills and understanding real world credit risk analysis.

