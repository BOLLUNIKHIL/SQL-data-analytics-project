-- displays the different types of countries 
SELECT DISTINCT country FROM gold.dim_customers;

-- displays different types of category & subcategory
SELECT DISTINCT category,subcategory FROM gold.dim_products;

-- displays all distinct order_dates in order 
SELECT DISTINCT order_date FROM gold.fact_sales ORDER BY order_date;
