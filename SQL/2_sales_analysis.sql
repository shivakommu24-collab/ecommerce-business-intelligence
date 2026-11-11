-- Sales Performance Analysis

-- 1. Total revenue
SELECT SUM(price) AS total_revenue
FROM olist_order_items_dataset;

-- 2. Total orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM olist_order_items_dataset;

-- 3. Average order value
SELECT
    SUM(price) / COUNT(DISTINCT order_id) AS average_order_value
FROM olist_order_items_dataset;

-- 4. Top 10 products by sales
SELECT
    product_id,
    SUM(price) AS total_sales
FROM olist_order_items_dataset
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;
