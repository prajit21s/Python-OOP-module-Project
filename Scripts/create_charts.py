
# E-COMMERCE DATA VISUALIZATIONS

import pandas as pd
import sqlite3
import matplotlib.pyplot as plt
from pathlib import Path

# Project paths
project = Path(__file__).resolve().parent.parent
db_path = project / "database" / "ecommerce.db"
output = project / "visualizations"

output.mkdir(exist_ok=True)

# Connect to SQLite
conn = sqlite3.connect(db_path)

# CHART 1: REVENUE BY CATEGORY

category = pd.read_sql_query("""
SELECT p.product_category,
       SUM(oi.total_sales) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category
ORDER BY revenue ASC
""", conn)

plt.figure(figsize=(10, 6))
plt.barh(category["product_category"],
         category["revenue"], color="steelblue")
plt.title("Revenue by Product Category")
plt.xlabel("Total Revenue")
plt.tight_layout()
plt.savefig(output / "01_category_revenue.png", dpi=300)
plt.show()


# CHART 2: MONTHLY SALES TREND

monthly = pd.read_sql_query("""
SELECT o.order_month,
       SUM(oi.total_sales) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_month
ORDER BY o.order_month
""", conn)

plt.figure(figsize=(12, 6))
plt.plot(monthly["order_month"],
         monthly["revenue"],
         marker="o", color="royalblue")
plt.title("Monthly Sales Revenue Trend")
plt.xlabel("Month")
plt.ylabel("Total Revenue")
plt.xticks(rotation=90, fontsize=8)
plt.grid(alpha=0.3)
plt.tight_layout()
plt.savefig(output / "02_monthly_sales.png", dpi=300)
plt.show()


# CHART 3: TOP 10 PRODUCTS

products = pd.read_sql_query("""
SELECT p.product_name,
       SUM(oi.total_sales) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 10
""", conn)

products = products.sort_values("revenue")

plt.figure(figsize=(11, 7))
plt.barh(products["product_name"],
         products["revenue"], color="teal")
plt.title("Top 10 Products by Revenue")
plt.xlabel("Total Revenue")
plt.tight_layout()
plt.savefig(output / "03_top_products.png", dpi=300)
plt.show()


# CHART 4: TOP 10 COUNTRIES

countries = pd.read_sql_query("""
SELECT o.country,
       SUM(oi.total_sales) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.country
ORDER BY revenue DESC
LIMIT 10
""", conn)

countries = countries.sort_values("revenue")

plt.figure(figsize=(10, 6))
plt.barh(countries["country"],
         countries["revenue"], color="darkorange")
plt.title("Top 10 Countries by Revenue")
plt.xlabel("Total Revenue")
plt.tight_layout()
plt.savefig(output / "04_country_revenue.png", dpi=300)
plt.show()


# CHART 5: PROFIT BY CATEGORY

profit = pd.read_sql_query("""
SELECT p.product_category,
       SUM(oi.profit) AS total_profit
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_category
ORDER BY total_profit ASC
""", conn)

plt.figure(figsize=(10, 6))
plt.barh(profit["product_category"],
         profit["total_profit"], color="seagreen")
plt.title("Profit by Product Category")
plt.xlabel("Total Profit")
plt.tight_layout()
plt.savefig(output / "05_category_profit.png", dpi=300)
plt.show()

conn.close()

print("All five charts generated successfully!")
print("Saved in:", output)
