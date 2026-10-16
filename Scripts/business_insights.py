# BUSINESS INSIGHTS

import pandas as pd
import sqlite3
from pathlib import Path

# Connect to the existing database
project = Path(__file__).resolve().parent.parent
db_path = project / "database" / "ecommerce.db"

conn = sqlite3.connect(db_path)

# Insight 1: Highest revenue category
query1 = """
SELECT p.product_category,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category
ORDER BY revenue DESC
"""

category = pd.read_sql_query(query1, conn)
print("\n1. REVENUE BY PRODUCT CATEGORY")
print(category.to_string(index=False))

# Insight 2: Top revenue country
query2 = """
SELECT o.country,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.country
ORDER BY revenue DESC
"""

countries = pd.read_sql_query(query2, conn)
print("\n2. REVENUE BY COUNTRY")
print(countries.head(5).to_string(index=False))

# Insight 3: Highest revenue month
query3 = """
SELECT o.order_month,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_month
ORDER BY revenue DESC
"""

months = pd.read_sql_query(query3, conn)
print("\n3. TOP 5 REVENUE MONTHS")
print(months.head(5).to_string(index=False))

# Insight 4: Top products
query4 = """
SELECT p.product_name,
       ROUND(SUM(oi.total_sales), 2) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 5
"""

products = pd.read_sql_query(query4, conn)
print("\n4. TOP 5 PRODUCTS")
print(products.to_string(index=False))

# Insight 5: Profit by product category
query5 = """
SELECT p.product_category,
       ROUND(SUM(oi.profit), 2) AS total_profit
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_category
ORDER BY total_profit DESC
"""

profits = pd.read_sql_query(query5, conn)
print("\n5. PROFIT BY CATEGORY")
print(profits.to_string(index=False))

# Save results
reports_path = project / "Reports"
reports_path.mkdir(exist_ok=True)

category.to_csv(reports_path / "insight_1.csv", index=False)
countries.to_csv(reports_path / "insight_2.csv", index=False)
months.to_csv(reports_path / "insight_3.csv", index=False)
products.to_csv(reports_path / "insight_4.csv", index=False)
profits.to_csv(reports_path / "insight_5.csv", index=False)

conn.close()

print("\nAll five insight reports generated successfully!")
