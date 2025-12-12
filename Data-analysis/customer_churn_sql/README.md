# 📊 Customer Churn – Mini Project (SQL + Power BI)

This is a simple and clean **Customer Churn Analysis** project built using  
**SQL (MySQL)** + **Power BI**.

The goal is to calculate three key metrics:

- **Total Customers**
- **Total Churned Customers**
- **Churn Rate (%)**

This project is intentionally minimal to show clear end-to-end understanding.

---

## 📁 Tools Used
- **MySQL** – Data import & basic analysis  
- **Power BI** – KPI visualization  
- **DAX** – KPI measures  
- **GitHub** – Project hosting

```

---

## 🛠️ SQL Steps

### 1. Create Database
```sql
CREATE DATABASE churn_project;
USE churn_project;
```

### 2. (Imported CSV using MySQL Workbench Import Wizard)

### 3. Basic SQL Analysis

#### 🔹 Total Customers
```sql
SELECT COUNT(*) AS total_customers
FROM customer_churn;
```

#### 🔹 Total Churned Customers
```sql
SELECT COUNT(*) AS total_churned
FROM customer_churn
WHERE Churn = 'Yes';
```

#### 🔹 Churn Rate (%)
```sql
SELECT 
    (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0) 
       / COUNT(*) AS churn_rate_percentage
FROM customer_churn;
```

---

## 📊 Power BI KPIs (DAX)

### Total Customers
```DAX
Total_Customers = COUNTROWS('churn_project customer_churn')
```

### Total Churned Customers
```DAX
Total_Churned = CALCULATE(
    COUNTROWS('churn_project customer_churn'),
    'churn_project customer_churn'[Churn] = "Yes"
)
```

### Churn Rate (%)
```DAX
Churn_Rate = DIVIDE([Total_Churned], [Total_Customers], 0) * 100
```

---

## 📌 Outcome
A simple Power BI dashboard showing:

- 🎯 **Total Customers**  
- 🚫 **Total Churned Customers**  
- 📉 **Churn Rate (%)**

This project demonstrates your ability to:
- Import data  
- Run SQL queries  
- Build KPIs using DAX  
- Create a minimal Power BI report  
- Host a project on GitHub  

---

## 👩‍💻 Author
**Deepika — Entry Level Data Analyst**

---

