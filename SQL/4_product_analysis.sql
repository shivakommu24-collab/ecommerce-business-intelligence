-- Product Performance Analysis

-- 1. Total products
SELECT COUNT(DISTINCT product_id) AS total_products
FROM olist_products_dataset;

-- 2. Top 10 products by revenue
SELECT
    product_id,
    SUM(price) AS total_revenue
FROM olist_order_items_dataset
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 10;

-- 3. Revenue by product category
SELECT
    p.product_category_name,
    SUM(oi.price) AS total_revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC;

-- 4. Average product price
SELECT AVG(price) AS average_product_price
FROM olist_order_items_dataset;
