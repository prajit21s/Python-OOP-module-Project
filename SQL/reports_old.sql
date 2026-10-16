
-- 1. Total sales by category
SELECT p.product_category,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category
ORDER BY revenue DESC;

-- 2. Monthly sales revenue
SELECT o.order_month,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_month
ORDER BY o.order_month;

-- 3. Top 10 customers
SELECT c.customer_name,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY revenue DESC
LIMIT 10;

-- 4. Top 10 products
SELECT p.product_name,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 10;

-- 5. Sales by country
SELECT o.country,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.country
ORDER BY revenue DESC;

-- 6. Average order value
SELECT ROUND(AVG(order_total), 2) AS average_order_value
FROM (
    SELECT order_id, SUM(total_sales) AS order_total
    FROM order_items
    GROUP BY order_id
);

-- 7. Number of orders per month
SELECT order_month, COUNT(*) AS total_orders
FROM orders
GROUP BY order_month
ORDER BY order_month;

-- 8. Products with above-average revenue
SELECT p.product_name,
       ROUND(SUM(oi.total_sales), 2) AS revenue,
       CASE
           WHEN SUM(oi.total_sales) > (
               SELECT AVG(product_revenue)
               FROM (
                   SELECT SUM(total_sales) AS product_revenue
                   FROM order_items
                   GROUP BY product_id
               )
           ) THEN 'Above Average'
           ELSE 'Below Average'
       END AS performance
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(oi.total_sales) > (
    SELECT AVG(product_revenue)
    FROM (
        SELECT SUM(total_sales) AS product_revenue
        FROM order_items
        GROUP BY product_id
    )
)
ORDER BY revenue DESC;
