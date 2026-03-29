/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- displays the latest and oldest orders and orders timeline
SELECT 
	MIN(order_date) AS oldest_order,
	MAX(order_date) AS latest_order,
	DATEDIFF(year,MIN(order_date),MAX(order_date)) AS order_timeline
FROM gold.fact_sales;

-- displays the youngest and oldest age and 
SELECT 
	MIN(birthdate) AS oldest,
	DATEDIFF(year,MIN(birthdate),GETDATE()) AS oldest_age,
	MAX(birthdate) AS youngest,
	DATEDIFF(year,MAX(birthdate),GETDATE()) AS youngest_age
FROM gold.dim_customers  where birthdate is not null  
