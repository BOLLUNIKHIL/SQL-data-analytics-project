-- Retrieve a list of all tables in the database
SELECT * FROM INFORMATION_SCHEMA.TABLES


-- Retrieve all columns for a specific table (dim_products)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'dim_products'
