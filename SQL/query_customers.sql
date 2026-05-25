CREATE TABLE customers_raw (
    CustomerID INT,
    Gender VARCHAR(20),
    Age INT,
    Annual_Income NUMERIC,
    Spending_Score INT,
    Profession VARCHAR(100),
    Work_Experience INT,
    Family_Size INT
);

SELECT *
FROM customers_raw
LIMIT 10;


-- Kiểm tra missing data
SELECT COUNT(*)
FROM customers_raw
WHERE Profession IS NULL;


-- Kiểm tra duplicate
SELECT CustomerID,
       COUNT(*)
FROM customers_raw
GROUP BY CustomerID
HAVING COUNT(*) > 1;


-- Tạo bảng clean data
CREATE TABLE customers_clean AS
SELECT
    CustomerID,
    Gender,
    Age,
    Annual_Income,
    Spending_Score,

    COALESCE(Profession, 'Unknown') AS Profession,

    Work_Experience,
    Family_Size,

    CASE
        WHEN Annual_Income < 50000 THEN 'Low'
        WHEN Annual_Income BETWEEN 50000 AND 100000 THEN 'Medium'
        ELSE 'High'
    END AS Income_Group,

    CASE
        WHEN Spending_Score < 40 THEN 'Low'
        WHEN Spending_Score BETWEEN 40 AND 69 THEN 'Medium'
        ELSE 'High'
    END AS Spending_Category

FROM customers_raw;


-- Kiểm tra bảng clean
SELECT *
FROM customers_clean
LIMIT 20;


-- Tạo segmentation
ALTER TABLE customers_clean
ADD COLUMN Customer_Segment VARCHAR(100);


-- Update segment
UPDATE customers_clean
SET Customer_Segment =
CASE
    WHEN Annual_Income > 100000 AND Spending_Score < 40
        THEN 'High Income - Low Spending'

    WHEN Annual_Income > 100000 AND Spending_Score >= 70
        THEN 'High Income - High Spending'

    WHEN Annual_Income < 50000 AND Spending_Score >= 70
        THEN 'Low Income - High Spending'

    WHEN Annual_Income < 50000 AND Spending_Score < 40
        THEN 'Low Income - Low Spending'

    ELSE 'Regular / Medium Segment'
END;


-- Spending theo profession
SELECT
    Profession,
    ROUND(AVG(Spending_Score),2) AS avg_spending
FROM customers_clean
GROUP BY Profession
ORDER BY avg_spending DESC;


-- Spending theo Family Size
SELECT
    Family_Size,
    ROUND(AVG(Spending_Score),2) AS avg_spending
FROM customers_clean
GROUP BY Family_Size
ORDER BY Family_Size;


-- Phân khúc khách hàng
SELECT
    Customer_Segment,
    COUNT(*) AS total_customers
FROM customers_clean
GROUP BY Customer_Segment
ORDER BY total_customers DESC;



SELECT *
FROM public.customers_clean;