
#IMPORT LIBRARIES

import pandas as pd
import sqlite3
from pathlib import Path

#SET FILE PATHS

project_folder = Path(__file__).resolve().parent.parent

csv_path = project_folder / "data" / "processed" / "global_ecommerce_sales_cleaned.csv"

database_folder = project_folder / "database"
database_folder.mkdir(exist_ok=True)

database_path = database_folder / "ecommerce.db"

#LOAD CLEANED DATASET

df = pd.read_csv(csv_path)

print("Dataset loaded successfully!")
print("Dataset shape:", df.shape)
print(df.head())

#CHECK DATA QUALITY

print("\nMissing values:", df.isnull().sum().sum())
print("Duplicate rows:", df.duplicated().sum())

if df.isnull().sum().sum() > 0:
    raise ValueError("Dataset still contains missing values.")

if not df["Order_ID"].is_unique:
    raise ValueError("Order_ID must be unique for this database design.")

#CREATING CUSTOMER TABLE DATA

customers = df[
    ["Customer_Name", "Customer_Segment"]
].drop_duplicates().reset_index(drop=True)

customers.insert(
    0, "customer_id",
    range(1, len(customers) + 1)
)

customers.columns = [
    "customer_id",
    "customer_name",
    "customer_segment"
]

#CREATING PRODUCT TABLE DATA

products = df[
    ["Product_Name", "Product_Category"]
].drop_duplicates().reset_index(drop=True)

products.insert(
    0, "product_id",
    range(1, len(products) + 1)
)

products.columns = [
    "product_id",
    "product_name",
    "product_category"
]

#CREATING ORDER TABLE DATA

orders = df.merge(
    customers,
    left_on=["Customer_Name", "Customer_Segment"],
    right_on=["customer_name", "customer_segment"],
    validate="many_to_one"
)

orders = orders[[
    "Order_ID",
    "customer_id",
    "Order_Date",
    "Country",
    "Region",
    "Payment_Method",
    "Order_Month"
]]

orders.columns = [
    "order_id",
    "customer_id",
    "order_date",
    "country",
    "region",
    "payment_method",
    "order_month"
]

#CREATING ORDER ITEMS TABLE DATA

order_items = df.merge(
    products,
    left_on=["Product_Name", "Product_Category"],
    right_on=["product_name", "product_category"],
    validate="many_to_one"
)

order_items = order_items[[
    "Order_ID",
    "product_id",
    "Quantity",
    "Unit_Price",
    "Discount_Percent",
    "Total_Sales",
    "Shipping_Cost",
    "Profit"
]]

order_items.columns = [
    "order_id",
    "product_id",
    "quantity",
    "unit_price",
    "discount_percent",
    "total_sales",
    "shipping_cost",
    "profit"
]

order_items.insert(
    0, "order_item_id",
    range(1, len(order_items) + 1)
)

#CONNECT TO SQLITE DATABASE

conn = sqlite3.connect(database_path)

conn.execute("PRAGMA foreign_keys = ON")

#CREATE DATABASE TABLES

conn.executescript("""
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_segment TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    product_category TEXT
);

CREATE TABLE orders (
    order_id TEXT PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date TEXT,
    country TEXT,
    region TEXT,
    payment_method TEXT,
    order_month TEXT,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id TEXT NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER,
    unit_price REAL,
    discount_percent REAL,
    total_sales REAL,
    shipping_cost REAL,
    profit REAL,
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);
""")

# STEP 11: INSERT DATA INTO DATABASE

customers.to_sql(
    "customers", conn,
    if_exists="append", index=False
)

products.to_sql(
    "products", conn,
    if_exists="append", index=False
)

orders.to_sql(
    "orders", conn,
    if_exists="append", index=False
)

order_items.to_sql(
    "order_items", conn,
    if_exists="append", index=False
)

conn.commit()

#CHECK DATABASE TABLES

print("\nDATABASE TABLE SUMMARY")

for table in [
    "customers", "products",
    "orders", "order_items"
]:
    count = conn.execute(
        f"SELECT COUNT(*) FROM {table}"
    ).fetchone()[0]

    print(f"{table}: {count} rows")

# Verify table relationships
errors = conn.execute(
    "PRAGMA foreign_key_check"
).fetchall()

print("Foreign key errors:", errors)

conn.close()

print("\nDatabase created successfully!")
print("Database location:", database_path)
