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

# 6️⃣ Explore Customer Purchasing Patterns

Exploratory analysis was performed to understand customer behavior.

Analysis included:

- Customer purchase frequency.
- Customer spending behavior.
- Recent purchase activity.
- Revenue contribution by customer.
- Transaction distribution.
- Customer purchasing patterns over time.

---

# 7️⃣ Calculate RFM Metrics

RFM analysis was performed using **Python (Pandas)** to measure customer purchasing behavior based on three key metrics:

| Metric | Meaning | Business Purpose |
|--------|---------|------------------|
| 🕐 **Recency** | Number of days since the customer's most recent purchase | Measures how recently the customer purchased |
| 🔄 **Frequency** | Number of unique orders placed by the customer | Measures customer purchase frequency |
| 💰 **Monetary** | Total revenue generated by the customer | Measures customer spending value |

### RFM Calculation

The RFM metrics were calculated at the **customer level** using transaction data.

- **Recency:** Calculated as the number of days between the analysis date and the customer's latest purchase.
- **Frequency:** Calculated by counting the customer's unique orders.
- **Monetary:** Calculated by summing the total revenue generated by the customer.

### RFM Scoring

Each RFM metric was converted into a score from **1 to 5** using **Python (Pandas)**.

- **Recency:** Fewer days since the last purchase = Higher score.
- **Frequency:** More orders = Higher score.
- **Monetary:** Higher spending = Higher score.

The three scores were combined to create an **RFM Score**.

Example:

```text
Recency Score    = 4
Frequency Score  = 1
Monetary Score   = 4

RFM Score = 414

```
---

# 8️⃣ Create Customer Segments

Customers were grouped into meaningful segments based on their **RFM scores**.

RFM scores were used to understand customer engagement, purchase frequency, and spending behavior.

### Customer Segments

| Segment | Description | Business Action |
|---------|-------------|-----------------|
| 👑 **Champions** | Highly engaged customers who purchase recently, frequently, and spend more | Reward and retain high-value customers |
| 💎 **Loyal Customers** | Customers who purchase regularly and show strong loyalty | Encourage repeat purchases and upselling |
| 🌱 **Potential Loyalists** | Recent customers with moderate purchase activity and potential to become loyal | Increase engagement and encourage repeat purchases |
| 🆕 **New Customers** | Recently acquired customers with limited purchase history | Build engagement and encourage the second purchase |
| ⚠️ **At Risk** | Previously valuable customers who have not purchased recently | Use targeted offers and retention campaigns |
| 💤 **Hibernating Customers** | Customers with low recent activity and low purchase frequency | Use re-engagement campaigns |
| 🚨 **Lost Customers** | Customers with very low engagement and purchasing activity | Attempt win-back campaigns or reduce marketing priority |

### Segmentation Framework

```text
RFM Scores
     ↓
Evaluate Recency
     ↓
Evaluate Frequency
     ↓
Evaluate Monetary Value
     ↓
Apply Segmentation Rules
     ↓
Assign Customer Segment
     ↓
Analyze Segment Size & Revenue
     ↓
Define Targeted Marketing Actions

```
Example:

```text
Customer: cust00179

RFM Score = 414

Recency Score    = 4
Frequency Score  = 1
Monetary Score   = 4

Segment → Potential Loyalist

```

---

# 9️⃣ Write SQL Business Queries

SQL was used to perform business-focused customer analysis.

Analysis areas include:

- Total customers.
- Total transactions.
- Total revenue.
- Average customer spending.
- Purchase frequency.
- Customer-level revenue.
- RFM metrics.
- Customer segment distribution.
- Revenue contribution by segment.
- High-value customers.
- At-risk customers.
- Inactive customers.

---

# 🔟 Define KPIs

## 📌 Key Performance Indicators (KPIs)

- 👥 **Total Customers**
- 🛒 **Total Orders / Transactions**
- 💰 **Total Revenue**
- 📊 **Average Customer Value**
- 🔄 **Average Purchase Frequency**
- 🕐 **Average Recency**
- 👑 **High-Value Customers**
- ⚠️ **At-Risk Customers**

---

# 🛠️ Technology Stack

| Tool | Purpose |
|------|---------|
| **Python (Pandas)** | Data cleaning, preprocessing, and RFM calculation |
| **SQL** | Customer analysis, segmentation, and KPI calculations |
| **Web-Based Interactive Analytics Dashboard** | Dashboard development and visualization |
| **Jupyter Notebook** | Data exploration and analytical workflow |

---

# 📊 Dashboard Preview

![Customer Segmentation & RFM Analysis Dashboard](YOUR_DASHBOARD_IMAGE_URL)

---
