DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INTEGER PRIMARY KEY, customer_name TEXT NOT NULL, customer_segment TEXT);
CREATE TABLE products (product_id INTEGER PRIMARY KEY, product_name TEXT NOT NULL, product_category TEXT);
CREATE TABLE orders (order_id TEXT PRIMARY KEY, customer_id INTEGER NOT NULL, order_date TEXT, country TEXT, region TEXT, payment_method TEXT, order_month TEXT, FOREIGN KEY(customer_id) REFERENCES customers(customer_id));
CREATE TABLE order_items (order_item_id INTEGER PRIMARY KEY, order_id TEXT NOT NULL, product_id INTEGER NOT NULL, quantity INTEGER, unit_price REAL, discount_percent REAL, total_sales REAL, shipping_cost REAL, profit REAL, FOREIGN KEY(order_id) REFERENCES orders(order_id), FOREIGN KEY(product_id) REFERENCES products(product_id));
