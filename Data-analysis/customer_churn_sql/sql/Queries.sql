-- Create database
CREATE DATABASE IF NOT EXISTS churn_project;
USE churn_project;

-- After importing CSV using Import Wizard:

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customer_churn;

-- Total Churned Customers
SELECT COUNT(*) AS total_churned
FROM customer_churn
WHERE Churn = 'Yes';

-- Churn Rate (%)
SELECT 
    (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0) 
    / COUNT(*) AS churn_rate_percentage
FROM customer_churn;