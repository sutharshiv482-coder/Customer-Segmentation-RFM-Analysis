# 🛒 Customer Segmentation & RFM Analysis

Customer Segmentation & RFM Analysis using Python, SQL, and Business Analytics to identify valuable customer groups and support targeted marketing decisions.

---

## 📊 Project Overview

Customer Segmentation & RFM Analysis is an e-commerce customer analytics project designed to understand customer purchasing behavior and identify high-value, loyal, at-risk, and inactive customers.

The project uses RFM (Recency, Frequency, Monetary) analysis to segment customers based on their purchasing activity and spending patterns.

Python is used for data cleaning, preparation, and RFM analysis, while SQL is used for business analysis and customer-level insights. An interactive dashboard is used to visualize customer segments, KPIs, and business insights.

---

## 🎯 Business Objective

The main objective of this project is to:

- Identify high-value and loyal customers
- Understand customer purchasing behavior
- Segment customers using RFM analysis
- Identify customers at risk of becoming inactive
- Analyze customer revenue contribution
- Support targeted marketing and retention strategies
- Improve customer engagement and retention
- Support customer lifetime value optimization

---

## ❓ Business Questions

1. How many customers belong to each RFM segment?
2. Which customer segments generate the most revenue?
3. Who are the highest-value customers?
4. Which customers are highly engaged and loyal?
5. Which customers are at risk of becoming inactive?
6. Which customers have not purchased recently?
7. What is the average monetary value by customer segment?
8. How frequently do customers purchase?
9. Which segments contribute the largest share of total revenue?
10. How can marketing strategies be customized for different customer segments?

---

# 🔄 Project Workflow

The project follows a structured **end-to-end Data Analyst workflow**:

```text
1. Understand Business Problem
          ↓
2. Inspect Raw Dataset
          ↓
3. Perform Data Quality Audit
          ↓
4. Clean Data using Pandas
          ↓
5. Validate Cleaned Data
          ↓
6. Explore Customer Purchasing Patterns
          ↓
7. Calculate RFM Metrics
          ↓
8. Create Customer Segments
          ↓
9. Write SQL Business Queries
          ↓
10. Define KPIs
          ↓
11. Build Dashboard
          ↓
12. Generate Business Insights
          ↓
13. Recommend Actions
```

---

# 1️⃣ Understand Business Problem

- Define the customer segmentation objective.
- Understand customer purchasing behavior.
- Identify customer-value differences.
- Determine how RFM analysis can support marketing and retention.
- Translate business requirements into analytical questions.

---

# 2️⃣ Inspect Raw Dataset

The raw customer transaction dataset was inspected using **Pandas** to understand its structure, data types, and initial data quality.

Activities included:

- Loading the raw transaction dataset.
- Checking the number of rows and columns.
- Reviewing column names and data types.
- Inspecting sample customer and transaction records.
- Checking missing values and duplicate records.
- Reviewing date, quantity, price, discount, and revenue fields.
- Examining customer and transaction patterns.

---

# 3️⃣ Perform Data Quality Audit

The dataset was audited using **Pandas** to identify data quality issues before performing customer segmentation and RFM analysis.

Key checks included:

- Missing values across all columns.
- Duplicate rows and transactions.
- Missing or invalid Customer IDs.
- Invalid or inconsistent transaction dates.
- Negative or zero quantities.
- Invalid or negative prices and revenue values.
- Inconsistent text values, casing, and whitespace.
- Incorrect data types.
- Missing or inconsistent customer information.
- Duplicate or conflicting Order IDs.

---

# 4️⃣ Clean Data using Pandas

Data cleaning and preprocessing were performed using **Python (Pandas)** to prepare the dataset for accurate RFM analysis and customer segmentation.

Key activities included:

- Removed exact duplicate records.
- Handled missing customer information.
- Standardized customer and transaction identifiers.
- Standardized text values, casing, and whitespace.
- Converted transaction dates into a consistent date format.
- Converted price, quantity, discount, and revenue fields into numeric data types.
- Corrected invalid or negative age values.
- Handled invalid quantities and transaction amounts.
- Recalculated missing revenue where sufficient transaction data was available.
- Removed invalid transaction records from the RFM dataset.
- Investigated duplicate and conflicting Order IDs.
- Validated the cleaned transaction-level data.
- Prepared the final dataset for RFM analysis and SQL querying.

> 🧹 **Clean transaction data is essential for accurate customer segmentation and reliable business insights.**

---

# 5️⃣ Validate Cleaned Data

The cleaned dataset was validated using **Python (Pandas)** to ensure data quality and consistency before calculating RFM metrics.

Validation included:

- Rechecking missing values across all columns.
- Confirming that duplicate records were removed.
- Validating Customer IDs and customer records.
- Checking transaction dates for valid and consistent values.
- Validating quantity, price, discount, and revenue values.
- Confirming correct data types for all columns.
- Checking for invalid or negative transaction values.
- Verifying unique customer and transaction counts.
- Confirming the final cleaned dataset is ready for RFM analysis.

> ✅ **Data validation ensures that RFM metrics are calculated from accurate and reliable transaction data.**

---

