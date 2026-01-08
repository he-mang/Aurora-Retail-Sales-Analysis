/* =========================================================
   AURORA-RETAIL-SALES-ANALYSIS
   Author: Hemang Chaudhary
   Purpose: Investigate sales performance, customer value,
            and product efficiency using transactional data.
   ========================================================= */

/* =========================================================
   1. DATA QUALITY VALIDATION
   ---------------------------------------------------------
   Business Reason:
   Before analyzing performance, leadership needs confidence
   that key fields used for revenue and trend analysis are
   complete and reliable.
   ========================================================= */
-- Checking count
SELECT COUNT(*)
FROM retail_sales

-- Checking for missing values in critical analytical columns
SELECT COUNT(*) AS invalid_records
FROM retail_sales
WHERE
	transactions_id IS NULL
	OR sale_date IS NULL
	OR sale_time IS NULL
	OR customer_id IS NULL
	OR gender IS NULL
	OR age IS NULL
	OR category IS NULL
	OR quantity IS NULL
	OR price_per_unit IS NULL
	OR cogs IS NULL
	OR total_sale IS NULL;

-- Deleting Nulls
DELETE FROM retail_sales
WHERE
	transactions_id IS NULL
	OR sale_date IS NULL
	OR sale_time IS NULL
	OR customer_id IS NULL
	OR gender IS NULL
	OR age IS NULL
	OR category IS NULL
	OR quantity IS NULL
	OR price_per_unit IS NULL
	OR cogs IS NULL
	OR total_sale IS NULL;

-- Verifying the count after delete
SELECT COUNT(*) 
FROM retail_sales;

/* =========================================================
   2. BUSINESS CONTEXT: OVERALL SCALE
   ---------------------------------------------------------
   Business Question:
   What is the overall size of the business in terms of
   customers, transactions, and revenue?
   ========================================================= */
SELECT
	COUNT(DISTINCT customer_ID) AS total_customers,
	COUNT(*) AS total_transactions,
	SUM(total_sale) AS total_revenue
FROM retail_sales;

/* =========================================================
   3. REVENUE DRIVERS: PRODUCT CATEGORIES
   ---------------------------------------------------------
   Business Question:
   Which product categories contribute the most to total
   revenue, and where should the business focus its efforts?
   ========================================================= */
-- How many unique categories are there?
SELECT
	COUNT(DISTINCT category) AS count_of_categories
FROM retail_sales;

-- What are those unique categories?
SELECT
	DISTINCT category
FROM retail_sales;

-- Which product categories contribute the most to total revenue, and where should the business focus its efforts?
SELECT
	category,
	SUM(total_sale) AS category_revenue
FROM retail_sales
GROUP BY category
ORDER BY category_revenue DESC;

/* =========================================================
   4. CUSTOMER VALUE ANALYSIS
   ---------------------------------------------------------
   Business Question:
   Are sales evenly distributed across customers, or is
   revenue concentrated among a small group?
   ========================================================= */
SELECT
	customer_id,
	SUM(total_sale) AS customer_lifetime_value
FROM retail_sales
GROUP BY customer_id
ORDER BY customer_lifetime_value DESC
LIMIT 10;


/* =========================================================
   5. TIME-BASED PERFORMANCE: SALES TRENDS
   ---------------------------------------------------------
   Business Question:
   How does sales performance change over time, and are there
   identifiable trends or seasonality patterns?
   ========================================================= */
SELECT
	EXTRACT(YEAR FROM sale_date) AS year,
	EXTRACT(MONTH FROM sale_date) AS month,
	SUM(total_sale) AS monthly_revenue
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;

/* =========================================================
   6. TRANSACTION VALUE BEHAVIOR
   ---------------------------------------------------------
   Business Question:
   What is the typical transaction size, and how does it vary
   across categories?
   ========================================================= */
SELECT
	category,
	AVG(total_sale) AS avg_transaction_value
FROM retail_sales
GROUP BY category
ORDER BY avg_transaction_value DESC;

/* =========================================================
   7. OPERATIONAL INSIGHT: SHOPPING TIME PATTERNS
   ---------------------------------------------------------
   Business Question:
   During which parts of the day do most transactions occur,
   and how can this inform staffing or promotional timing?
   ========================================================= */
SELECT
	CASE
		WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
		WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END AS time_of_day,
	COUNT(*) AS transaction_count,
	SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY time_of_day
ORDER BY transaction_count DESC;

/* =========================================================
   8. LOW-PERFORMANCE IDENTIFICATION
   ---------------------------------------------------------
   Business Question:
   Are there products or categories with consistently low
   revenue contribution that may require review or optimization?
   ========================================================= */
SELECT
    category,
    COUNT(*) AS transaction_count,
    SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY category
HAVING SUM(total_sale) < (
    SELECT AVG(total_sale)
    FROM retail_sales
)
ORDER BY total_revenue ASC;
