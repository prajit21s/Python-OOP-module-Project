
# ETL PIPELINE VALIDATION

import pandas as pd
import sqlite3
from pathlib import Path

project = Path(__file__).resolve().parent.parent

csv_path = project / "data/processed/global_ecommerce_sales_cleaned.csv"
db_path = project / "database/ecommerce.db"

# Loading cleaned dataset
df = pd.read_csv(csv_path)

# Connecting to SQLite database
conn = sqlite3.connect(db_path)
conn.execute("PRAGMA foreign_keys = ON")

# 1. Checking missing values
print("1. Missing values:", df.isnull().sum().sum())

# 2. Checking duplicate records
print("2. Duplicate rows:", df.duplicated().sum())

# 3. Checking table records
tables = ["customers", "products", "orders", "order_items"]

for table in tables:
    count = pd.read_sql_query(
        f"SELECT COUNT(*) AS count FROM {table}", conn
    ).iloc[0]["count"]

    print(f"3. {table}: {count} records")

# 4. Compare cleaned dataset with orders
order_count = pd.read_sql_query(
    "SELECT COUNT(*) AS count FROM orders", conn
).iloc[0]["count"]

item_count = pd.read_sql_query(
    "SELECT COUNT(*) AS count FROM order_items", conn
).iloc[0]["count"]

print("4. Order count matches CSV:", len(df) == order_count)
print("5. Item count matches CSV:", len(df) == item_count)

# 5. Checking foreign keys
foreign_key_errors = conn.execute(
    "PRAGMA foreign_key_check"
).fetchall()

print("6. Foreign key errors:", foreign_key_errors)

# 6. Comparing total revenue
csv_revenue = df["Total_Sales"].sum()

db_revenue = pd.read_sql_query(
    "SELECT SUM(total_sales) AS revenue FROM order_items",
    conn
).iloc[0]["revenue"]

print("7. CSV revenue:", round(csv_revenue, 2))
print("8. Database revenue:", round(db_revenue, 2))

print(
    "9. Revenue matches:",
    abs(csv_revenue - db_revenue) < 0.01
)

conn.close()

print("\nETL validation finished!")
