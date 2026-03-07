# Loan approval analytics dashboard
## Project Overview
This project analyzes loan approval patterns using SQL and Power BI to identify key factors influencing loan approvals such as credit score, employment type, income, and loan amount.
The objective is to help financial institutions understand approval trends, identify risk factors, and improve decision-making using data-driven insights.

## Problem Statement
Traditional loan approval processes often rely on manual evaluation, which can lead to delays and inconsistent decisions.
This project analyzes loan application data to:
-Identify approval trends
-Understand the impact of credit score and income
-Analyze loan distribution by employment type
-Improve decision-making through analytics

## Business Objectives
-Analyze loan approval vs rejection trends
-Identify key factors influencing loan approval
-Build a data-driven dashboard
-Provide visual insights for decision-makers

## Tools & Technologies
| Tool       | Purpose               |
| ---------- | --------------------- |
| PostgreSQL | Data storage          |
| SQL        | Data analysis         |
| Power BI   | Data visualization    |
| GitHub     | Project documentation |

## Dataset description
| Column          | Description                |
| --------------- | -------------------------- |
| Loan_ID         | Unique loan application ID |
| Applicant_Age   | Age of applicant           |
| Monthly_Income  | Applicant monthly income   |
| Loan_Amount     | Requested loan amount      |
| Credit_Score    | Applicant credit score     |
| Employment_Type | Employment category        |
| Approval_Status | Loan approved or rejected  |

## Key KPIs
-Total Loan Applications
-Total Approved Loans
-Loan Approval Rate
-Average Credit Score

## Dashboard Features
The Power BI dashboard includes:
-Loan approval distribution
-Average loan amount by employment type
-Credit score distribution
-Loan amount vs monthly income analysis
-Interactive employment filters

## Dashboard preview
<img width="1289" height="733" alt="dashboard-screenshot" src="https://github.com/user-attachments/assets/b233c49c-04ce-4f21-b124-41fd60c430ae" />

## SQL Analysis Queries

```sql
-- Total Loan Applications
SELECT COUNT(*) AS total_applications
FROM loan_data;

-- Loan Approval Distribution
SELECT approval_status, COUNT(*)
FROM loan_data
GROUP BY approval_status;
```
Above mentioned is a sample code

## Business value
-This analysis helps organizations:
-Identify high-risk applicants
-Improve loan approval transparency
-Enable data-driven lending strategies

## Future Improvements
Loan default prediction model
Machine learning risk scoring
Automated loan eligibility system

## Author
Mirthnalini Shanmugasundaram
Aspiring Business Analyst | Data Analyst

## Skills:
SQL
Power BI
Data Analysis
Business Analysis
Data Visualization




