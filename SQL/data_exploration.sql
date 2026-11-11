-- E-Commerce Data Exploration
-- Project: Olist Brazilian E-Commerce

-- 1. View orders
SELECT *
FROM olist_orders_dataset
LIMIT 10;

-- 2. Count total orders
SELECT COUNT(*) AS total_orders
FROM olist_orders_dataset;

-- 3. View customers
SELECT *
FROM olist_customers_dataset
LIMIT 10;
