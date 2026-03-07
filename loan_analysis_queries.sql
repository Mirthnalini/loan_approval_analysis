-- ======================================================
-- Loan Approval Analytics Project
-- Author: Mirthnalini Shanmugasundaram
-- Description: SQL analysis for loan approval patterns
-- Tools Used: PostgreSQL
-- ======================================================


-- =====================================
-- 1. Create Table
-- =====================================

CREATE TABLE loan_data (
    loan_id VARCHAR(10) PRIMARY KEY,
    applicant_age INT,
    monthly_income INT,
    loan_amount INT,
    credit_score INT,
    employment_type VARCHAR(50),
    approval_status VARCHAR(20)
);


-- =====================================
-- 2. Data Import (CSV File)
-- =====================================

-- Note: Update the file path based on your system

COPY loan_data
FROM 'Loan_Approval_Project_Dataset.csv'
DELIMITER ','
CSV HEADER;


-- =====================================
-- 3. Data Exploration
-- =====================================

-- View first 10 records
SELECT *
FROM loan_data
LIMIT 10;


-- Total number of applications
SELECT COUNT(*) AS total_applications
FROM loan_data;


-- Check distinct employment types
SELECT DISTINCT employment_type
FROM loan_data;


-- Check approval status categories
SELECT DISTINCT approval_status
FROM loan_data;


-- =====================================
-- 4. Business Analysis Queries
-- =====================================


-- Total Loan Applications
SELECT COUNT(*) AS total_applications
FROM loan_data;


-- Loan Approval Distribution
SELECT approval_status,
COUNT(*) AS application_count
FROM loan_data
GROUP BY approval_status;


-- Loan Approval Rate
SELECT 
    ROUND(
        (COUNT(CASE WHEN approval_status = 'Approved' THEN 1 END) * 100.0) 
        / COUNT(*), 
    2) AS approval_rate_percentage
FROM loan_data;


-- Average Credit Score of Applicants
SELECT AVG(credit_score) AS avg_credit_score
FROM loan_data;


-- Average Loan Amount by Employment Type
SELECT employment_type,
AVG(loan_amount) AS avg_loan_amount
FROM loan_data
GROUP BY employment_type
ORDER BY avg_loan_amount DESC;


-- Loan Amount vs Monthly Income Analysis
SELECT
AVG(monthly_income) AS avg_income,
AVG(loan_amount) AS avg_loan_amount
FROM loan_data;


-- Credit Score Distribution
SELECT credit_score,
COUNT(*) AS applicant_count
FROM loan_data
GROUP BY credit_score
ORDER BY credit_score;


-- Approval Trend by Employment Type
SELECT
employment_type,
approval_status,
COUNT(*) AS application_count
FROM loan_data
GROUP BY employment_type, approval_status
ORDER BY employment_type;


-- Average Income by Approval Status
SELECT approval_status,
AVG(monthly_income) AS avg_income
FROM loan_data
GROUP BY approval_status;


-- Average Credit Score by Approval Status
SELECT approval_status,
AVG(credit_score) AS avg_credit_score
FROM loan_data
GROUP BY approval_status;
