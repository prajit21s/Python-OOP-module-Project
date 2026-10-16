-- 1. Revenue by category
SELECT p.product_category, ROUND(SUM(oi.total_sales),2) AS revenue FROM order_items oi JOIN products p ON oi.product_id=p.product_id GROUP BY p.product_category ORDER BY revenue DESC;

-- 2. Monthly revenue
SELECT o.order_month, ROUND(SUM(oi.total_sales),2) AS revenue FROM orders o JOIN order_items oi ON o.order_id=oi.order_id GROUP BY o.order_month ORDER BY o.order_month;

-- 3. Top ten customers
SELECT c.customer_name,c.customer_segment,ROUND(SUM(oi.total_sales),2) AS revenue FROM customers c JOIN orders o ON c.customer_id=o.customer_id JOIN order_items oi ON oi.order_id=o.order_id GROUP BY c.customer_id ORDER BY revenue DESC LIMIT 10;

-- 4. Top ten products
SELECT p.product_name,p.product_category,ROUND(SUM(oi.total_sales),2) AS revenue FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.product_id ORDER BY revenue DESC LIMIT 10;

-- 5. Revenue by country
SELECT o.country, ROUND(SUM(oi.total_sales),2) AS revenue FROM orders o JOIN order_items oi ON o.order_id=oi.order_id GROUP BY o.country ORDER BY revenue DESC;

-- 6. Average order value
SELECT ROUND(AVG(order_revenue),2) AS average_order_value FROM (SELECT order_id,SUM(total_sales) AS order_revenue FROM order_items GROUP BY order_id);

-- 7. Number of orders by month
SELECT order_month, COUNT(*) AS order_count FROM orders GROUP BY order_month ORDER BY order_month;

-- 8. Above-average product revenue
SELECT p.product_name, p.product_category, ROUND(SUM(oi.total_sales),2) AS revenue, CASE WHEN SUM(oi.total_sales) > (SELECT AVG(product_revenue) FROM (SELECT SUM(total_sales) AS product_revenue FROM order_items GROUP BY product_id)) THEN 'Above Average' ELSE 'Below Average' END AS performance FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.product_id HAVING SUM(oi.total_sales) > (SELECT AVG(product_revenue) FROM (SELECT SUM(total_sales) AS product_revenue FROM order_items GROUP BY product_id)) ORDER BY revenue DESC;