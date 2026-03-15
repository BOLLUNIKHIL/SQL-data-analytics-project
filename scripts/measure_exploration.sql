-- TOTAL SALES
SELECT 
	SUM(sales_amount) AS total_sales
FROM gold.fact_sales

-- AVERAGE SELLING PRICE
SELECT 
	AVG(price) AS avg_cost
FROM gold.fact_sales

-- TOTAL NUMBER OF CUSTOMERS
SELECT 
	COUNT( customer_id) AS total_customers
FROM gold.dim_customers

-- TOTAL NUMBER OF PRODUCTS
SELECT 
	COUNT( product_id) AS total_products
FROM gold.dim_products

-- TOTAL NUMBER OF ORDERS
SELECT 
	COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales

-- CUSTOMERS WITH ORDER PLACED
SELECT 
	COUNT(customer_key) AS orders_placed
FROM gold.fact_sales

-- TOTAL ITEMS SOLD
SELECT 
	SUM(quantity) AS items_sold
FROM gold.fact_sales

-- GENARATE A BUSINESS REPORT 

SELECT 'Total_sales' AS measure_name,
	SUM(sales_amount) AS total_sales
FROM gold.fact_sales
UNION ALL
SELECT 'Average_Cost' AS measure_name,
	AVG(price) AS avg_cost
FROM gold.fact_sales
UNION ALL
SELECT 'Total_Customers' AS measure_name,
	COUNT( customer_id) AS total_customers
FROM gold.dim_customers
UNION ALL
SELECT 'Total_Products' AS measure_name,
	COUNT( product_id) AS total_products
FROM gold.dim_products
UNION ALL
SELECT 'Total_Orders' AS measure_name,
	COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales
UNION ALL
SELECT 'Total_Orders_Placed' AS measure_name,
	COUNT(customer_key) AS orders_placed
FROM gold.fact_sales
UNION ALL
SELECT 'Total_Quantity' AS measure_name,
	SUM(quantity) AS items_sold
FROM gold.fact_sales
