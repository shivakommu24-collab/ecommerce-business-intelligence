-- Delivery Performance Analysis

-- 1. Average delivery time in days
SELECT
    AVG(
        JULIANDAY(order_delivered_customer_date)
        - JULIANDAY(order_purchase_timestamp)
    ) AS average_delivery_days
FROM olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL;

-- 2. Delivered orders
SELECT COUNT(*) AS delivered_orders
FROM olist_orders_dataset
WHERE order_status = 'delivered';

-- 3. Cancelled orders
SELECT COUNT(*) AS cancelled_orders
FROM olist_orders_dataset
WHERE order_status = 'canceled';

-- 4. Late deliveries
SELECT COUNT(*) AS late_deliveries
FROM olist_orders_dataset
WHERE order_delivered_customer_date >
      order_estimated_delivery_date;

-- 5. Average review score
SELECT AVG(review_score) AS average_review_score
FROM olist_order_reviews_dataset;
