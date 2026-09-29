use data_analysis;
select * from rfm;

# 1. Total Customers
SELECT COUNT(DISTINCT customerid) AS Total_Customers
FROM rfm;

# 2. Total Transactions
SELECT COUNT(DISTINCT orderid) AS Total_Transactions
FROM rfm;

# 3. Total Revenue
SELECT SUM(revenue) AS Total_Revenue
FROM rfm;

# 4. Average Customer Spending
SELECT 
    AVG(Customer_Revenue) AS Average_Customer_Spending
FROM (
    SELECT 
        CustomerID,
        SUM(revenue) AS Customer_Revenue
    FROM rfm
    GROUP BY customerid
) AS Customer_Spending;


# 5. Purchase Frequency
SELECT 
    customerid,
    COUNT(DISTINCT orderid) AS Purchase_Frequency
FROM rfm
GROUP BY customerid;


# 6. Customer-Level Revenue
SELECT 
    customerid,
    SUM(revenue) AS Customer_Revenue
FROM rfm
GROUP BY customerid
ORDER BY Customer_Revenue DESC;


-- 7. RFM Metrics
SELECT
    customerid,
    DATEDIFF(
        (SELECT MAX(orderdate) FROM rfm),
        MAX(orderdate)
    ) AS Recency,
    COUNT(DISTINCT orderid) AS Frequency,
    SUM(revenue) AS Monetary
FROM rfm
GROUP BY customerid;

# 8. High-Value Customers
WITH Customer_RFM AS (
    SELECT
        customerid,
        DATEDIFF(
            (SELECT MAX(orderdate) FROM rfm),
            MAX(orderdate)
        ) AS Recency,
        COUNT(DISTINCT orderid) AS Frequency,
        SUM(revenue) AS Monetary
    FROM rfm
    GROUP BY customerid
),
RFM_Scored AS (
    SELECT
        customerid,
        Recency,
        Frequency,
        Monetary,

        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score

    FROM Customer_RFM
)
SELECT
    customerid,
    Monetary AS Customer_Revenue,

    CASE
        WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4
            THEN 'Champions'

        WHEN F_Score >= 4 AND M_Score >= 3
            THEN 'Loyal Customers'

        WHEN R_Score >= 4 AND F_Score >= 2
            THEN 'Potential Loyalists'

        WHEN R_Score >= 4 AND F_Score <= 2
            THEN 'New Customers'

        WHEN R_Score <= 2 AND F_Score >= 3 AND M_Score >= 3
            THEN 'At Risk'

        WHEN R_Score <= 2 AND F_Score <= 2 AND M_Score >= 2
            THEN 'Hibernating Customers'

        ELSE 'Lost Customers'
    END AS Segment

FROM RFM_Scored
ORDER BY Customer_Revenue DESC;

