"""Rebuild clean data, normalized SQLite tables and 8 SQL reports from a simulated raw CSV.
Run from project root: python3 scripts/run_full_pipeline.py
"""
from pathlib import Path
import sqlite3
import pandas as pd

ROOT = Path(__file__).resolve().parent.parent
RAW = ROOT / 'data' / 'raw' / 'global_ecommerce_sales_.csv'
PROCESSED = ROOT / 'data' / 'processed' / 'global_ecommerce_sales_cleaned.csv'
DB = ROOT / 'database' / 'ecommerce.db'
REPORTS = ROOT / 'Reports'
SQL_DIR = ROOT / 'SQL'
for path in [PROCESSED.parent, DB.parent, REPORTS, SQL_DIR]:
    path.mkdir(parents=True, exist_ok=True)
if not RAW.is_file():
    raise FileNotFoundError(f'Missing input CSV: {RAW}')

raw = pd.read_csv(RAW)
print(f'Raw data: {len(raw)} records; missing cells: {int(raw.isna().sum().sum())}; duplicate rows: {int(raw.duplicated().sum())}')
df = raw.drop_duplicates().copy()
for column in ['Customer_Segment', 'Product_Category', 'Payment_Method']:
    df[column] = df[column].astype('string').str.strip().str.title().fillna('Unknown')
df['Shipping_Cost'] = df['Shipping_Cost'].fillna(df['Shipping_Cost'].median())
df['Order_Date'] = pd.to_datetime(df['Order_Date'], errors='raise')
df['Order_Month'] = df['Order_Date'].dt.to_period('M').astype(str)
df['Order_Date'] = df['Order_Date'].dt.strftime('%Y-%m-%d')
if df.isna().any().any() or df.duplicated().any() or not df['Order_ID'].is_unique:
    raise ValueError('Cleaning checks failed: missing, duplicate or nonunique order ID')
df.to_csv(PROCESSED, index=False)

customers = df[['Customer_Name','Customer_Segment']].drop_duplicates().reset_index(drop=True)
customers.insert(0,'customer_id',range(1,len(customers)+1))
customers.columns=['customer_id','customer_name','customer_segment']
products = df[['Product_Name','Product_Category']].drop_duplicates().reset_index(drop=True)
products.insert(0,'product_id',range(1,len(products)+1))
products.columns=['product_id','product_name','product_category']
orders = df.merge(customers,left_on=['Customer_Name','Customer_Segment'],right_on=['customer_name','customer_segment'],validate='many_to_one')
orders=orders[['Order_ID','customer_id','Order_Date','Country','Region','Payment_Method','Order_Month']]
orders.columns=['order_id','customer_id','order_date','country','region','payment_method','order_month']
items=df.merge(products,left_on=['Product_Name','Product_Category'],right_on=['product_name','product_category'],validate='many_to_one')
items=items[['Order_ID','product_id','Quantity','Unit_Price','Discount_Percent','Total_Sales','Shipping_Cost','Profit']]
items.columns=['order_id','product_id','quantity','unit_price','discount_percent','total_sales','shipping_cost','profit']
items.insert(0,'order_item_id',range(1,len(items)+1))

schema='''DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INTEGER PRIMARY KEY, customer_name TEXT NOT NULL, customer_segment TEXT);
CREATE TABLE products (product_id INTEGER PRIMARY KEY, product_name TEXT NOT NULL, product_category TEXT);
CREATE TABLE orders (order_id TEXT PRIMARY KEY, customer_id INTEGER NOT NULL, order_date TEXT, country TEXT, region TEXT, payment_method TEXT, order_month TEXT, FOREIGN KEY(customer_id) REFERENCES customers(customer_id));
CREATE TABLE order_items (order_item_id INTEGER PRIMARY KEY, order_id TEXT NOT NULL, product_id INTEGER NOT NULL, quantity INTEGER, unit_price REAL, discount_percent REAL, total_sales REAL, shipping_cost REAL, profit REAL, FOREIGN KEY(order_id) REFERENCES orders(order_id), FOREIGN KEY(product_id) REFERENCES products(product_id));
'''
(SQL_DIR / 'schema.sql').write_text(schema)
report_queries = [
('Revenue by category','SELECT p.product_category, ROUND(SUM(oi.total_sales),2) AS revenue FROM order_items oi JOIN products p ON oi.product_id=p.product_id GROUP BY p.product_category ORDER BY revenue DESC'),
('Monthly revenue','SELECT o.order_month, ROUND(SUM(oi.total_sales),2) AS revenue FROM orders o JOIN order_items oi ON o.order_id=oi.order_id GROUP BY o.order_month ORDER BY o.order_month'),
('Top ten customers','SELECT c.customer_name,c.customer_segment,ROUND(SUM(oi.total_sales),2) AS revenue FROM customers c JOIN orders o ON c.customer_id=o.customer_id JOIN order_items oi ON oi.order_id=o.order_id GROUP BY c.customer_id ORDER BY revenue DESC LIMIT 10'),
('Top ten products','SELECT p.product_name,p.product_category,ROUND(SUM(oi.total_sales),2) AS revenue FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.product_id ORDER BY revenue DESC LIMIT 10'),
('Revenue by country','SELECT o.country, ROUND(SUM(oi.total_sales),2) AS revenue FROM orders o JOIN order_items oi ON o.order_id=oi.order_id GROUP BY o.country ORDER BY revenue DESC'),
('Average order value','SELECT ROUND(AVG(order_revenue),2) AS average_order_value FROM (SELECT order_id,SUM(total_sales) AS order_revenue FROM order_items GROUP BY order_id)'),
('Number of orders by month','SELECT order_month, COUNT(*) AS order_count FROM orders GROUP BY order_month ORDER BY order_month'),
('Above-average product revenue','SELECT p.product_name, p.product_category, ROUND(SUM(oi.total_sales),2) AS revenue, CASE WHEN SUM(oi.total_sales) > (SELECT AVG(product_revenue) FROM (SELECT SUM(total_sales) AS product_revenue FROM order_items GROUP BY product_id)) THEN \'Above Average\' ELSE \'Below Average\' END AS performance FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.product_id HAVING SUM(oi.total_sales) > (SELECT AVG(product_revenue) FROM (SELECT SUM(total_sales) AS product_revenue FROM order_items GROUP BY product_id)) ORDER BY revenue DESC')]
(SQL_DIR/'reports.sql').write_text('\n\n'.join('-- '+str(i)+'. '+title+'\n'+sql+';' for i,(title,sql) in enumerate(report_queries,1)))
with sqlite3.connect(DB) as con:
    con.execute('PRAGMA foreign_keys=ON')
    con.executescript(schema)
    for name,frame in [('customers',customers),('products',products),('orders',orders),('order_items',items)]:
        frame.to_sql(name,con,if_exists='append',index=False)
    con.commit()
    for i,(title,sql) in enumerate(report_queries,1):
        result=pd.read_sql_query(sql,con)
        result.to_csv(REPORTS/f'sql_report_{i}.csv',index=False)
        print(f'Report {i}: {title} ({len(result)} rows)')
    fk=con.execute('PRAGMA foreign_key_check').fetchall()
    revenue=con.execute('SELECT SUM(total_sales) FROM order_items').fetchone()[0]
    counts={t:con.execute(f'SELECT COUNT(*) FROM {t}').fetchone()[0] for t in ['customers','products','orders','order_items']}
    assert not fk, f'Foreign-key errors: {fk}'
    assert counts['orders']==counts['order_items']==len(df)
    assert abs(revenue-df['Total_Sales'].sum())<0.01
print('SUCCESS: checks passed.',counts,'Revenue:',round(revenue,2))
print('Outputs:',PROCESSED,DB,REPORTS)
